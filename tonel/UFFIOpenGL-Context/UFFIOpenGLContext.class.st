"
I am used to bind an OpenGL context using OSWindow.
"
Class {
	#name : #UFFIOpenGLContext,
	#superclass : #Object,
	#instVars : [
		'window',
		'renderer',
		'session',
		'gl',
		'versionString',
		'vendorString',
		'rendererString',
		'shadingLanguageVersionString',
		'version',
		'shadingLanguageVersion',
		'hasSRGB',
		'hasMultisample',
		'extensions',
		'glAttributes',
		'textureFromFormDictionary',
		'textureWithModificationCountDictionary',
		'renderTargetForObjectDictionary',
		'ownsWindow'
	],
	#classVars : [
		'ErrorDictionary'
	],
	#pools : [
		'UFFIOpenGLConstants'
	],
	#classInstVars : [
		'globalContextSession',
		'globalContext'
	],
	#category : #'UFFIOpenGL-Context'
}

{ #category : #settings }
UFFIOpenGLContext class >> defaultGLAttributes [
	^ OSWindowGLAttributes new.
]

{ #category : #accessing }
UFFIOpenGLContext class >> globalContext [
	(globalContextSession ~~ Smalltalk session or: [ globalContextSession isNil ]) ifTrue: [
		globalContext := self new.
		globalContextSession := Smalltalk session.
	].
	^ globalContext
]

{ #category : #initialization }
UFFIOpenGLContext class >> initialize [
	super initialize.
	
	ErrorDictionary := Dictionary newFromPairs: {
		GL_INVALID_OPERATION . #GL_INVALID_OPERATION .
		GL_INVALID_ENUM . #GL_INVALID_ENUM .
		GL_INVALID_VALUE . #GL_INVALID_VALUE .
		GL_OUT_OF_MEMORY . #GL_OUT_OF_MEMORY .
		GL_INVALID_FRAMEBUFFER_OPERATION . #GL_INVALID_FRAMEBUFFER_OPERATION .
	}
]

{ #category : #'instance creation' }
UFFIOpenGLContext class >> newWithAttributes: attributes [
	^ self basicNew initializeWithAttributes: attributes
]

{ #category : #'instance creation' }
UFFIOpenGLContext class >> newWithAttributes: attributes forWindow: aWindow [
	^ self basicNew initializeWithAttributes: attributes forWindow: aWindow
]

{ #category : #'context activation' }
UFFIOpenGLContext >> asCurrentDo: aBlock [
	self checkSession.
	^ renderer asCurrentDo: aBlock
]

{ #category : #'context activation' }
UFFIOpenGLContext >> asCurrentDo: aBlock ifFailure: aFailureBlock [
	self checkSession.
	^ renderer asCurrentDo: aBlock ifFailure: aFailureBlock
]

{ #category : #'resource creation' }
UFFIOpenGLContext >> bufferObject [
	^ (UFFIOpenGLBufferHandle for: self)
		generate;
		yourself
]

{ #category : #'as yet unclassified' }
UFFIOpenGLContext >> checkErrors [
	| error |
	[(error := self gl getError) ~= GL_NO_ERROR] whileTrue: [
		self printError: error
	]
]

{ #category : #extensions }
UFFIOpenGLContext >> checkImportantExtensions [
	self isDesktopVersion ifTrue: [ 
		hasSRGB := (self hasExtension: #GL_EXT_texture_sRGB) and: [ self hasExtension: #GL_EXT_framebuffer_sRGB ].
		hasMultisample := self hasExtension: #GL_EXT_framebuffer_multisample.
	] ifFalse: [
		self flag: 'Disable srgb until we can blit into the main framebuffer correctly.'.
		"hasSRGB := self hasExtension: #GL_EXT_sRGB."
		hasSRGB := false.
		hasMultisample := self hasExtension: #GL_EXT_multisample_compatibility.
	].

]

{ #category : #'session management' }
UFFIOpenGLContext >> checkSession [
	| extensionsString |
	session == Smalltalk session ifTrue: [ ^ self ].
	ownsWindow ifTrue: [
		self createContextOnlyWindow
	] ifFalse: [
		renderer := window newOpenGLRenderer.
	].

	session := Smalltalk session.
	
	self asCurrentDo: [
		versionString := (self gl getString: GL_VERSION) readString.
		self assert: versionString isNotNil.
		version :=  (versionString splitOn: '.') collect: #asInteger.

		vendorString := (self gl getString: GL_VENDOR) readString.
		self assert: vendorString isNotNil.

		rendererString := (self gl getString: GL_RENDERER) readString.
		self assert: rendererString isNotNil.

		shadingLanguageVersionString := (self gl getString: GL_SHADING_LANGUAGE_VERSION) readString.
		self assert: shadingLanguageVersionString isNotNil.
		shadingLanguageVersion :=  (shadingLanguageVersionString splitOn: '.') collect: #asInteger.

		(self isAtLeastGL30 or: [ self isAtLeastGLES30 ]) ifTrue: [
			| extensionCount extensionCountHolder|
			extensionCountHolder := ExternalAddress allocate: 4.
			[
				self gl getIntegerv_pname: GL_NUM_EXTENSIONS data: extensionCountHolder.
				extensionCount := extensionCountHolder uint32AtOffset: 0.
			] ensure: [ extensionCountHolder free ].
			extensions := Set new.
			1 to: extensionCount - 1 do: [ :i |
				extensions add: (self gl getStringi_name: GL_EXTENSIONS index: i) readString asSymbol
			]
		] ifFalse: [ 
			extensionsString := (self gl getString: GL_EXTENSIONS) readString.
			self assert: extensionsString isNotNil.
			extensions := Set newFrom: ((shadingLanguageVersionString splitOn: ' ') collect: [ :each | each trimBoth asSymbol ]).
		].
	].

	self checkImportantExtensions.
	
	textureFromFormDictionary := WeakKeyDictionary new.
	textureWithModificationCountDictionary := WeakKeyDictionary new.
	renderTargetForObjectDictionary := WeakKeyDictionary new.
]

{ #category : #'session management' }
UFFIOpenGLContext >> createContextOnlyWindow [
	| osWindowAttributes |
	osWindowAttributes := OSWindowAttributes new
		visible: false;
		extent: 1@1;
		glAttributes: self glAttributes;
		yourself.

	window := OSWindow createWithAttributes: osWindowAttributes.
	renderer := window newOpenGLRenderer.
	Smalltalk os isMacOSX ifTrue: [
		window show; hide
	].

]

{ #category : #initialization }
UFFIOpenGLContext >> destroy [
	ownsWindow ifTrue: [ 
		window ifNotNil: [window destroy].
	].
	window := nil
]

{ #category : #version }
UFFIOpenGLContext >> extensions [
	^ extensions
]

{ #category : #accessing }
UFFIOpenGLContext >> gl [
	gl ifNil: [ gl := UFFIOpenGL new ].
	^ gl
]

{ #category : #'session management' }
UFFIOpenGLContext >> glAttributes [
	^ glAttributes ifNil: [ glAttributes := self class defaultGLAttributes ]
]

{ #category : #extensions }
UFFIOpenGLContext >> hasExtension: extensionName [
	^ extensions includes: extensionName
]

{ #category : #extensions }
UFFIOpenGLContext >> hasMultisample [
	^ hasMultisample
]

{ #category : #extensions }
UFFIOpenGLContext >> hasSRGB [
	^ hasSRGB
]

{ #category : #initialization }
UFFIOpenGLContext >> hasValidSession [
	^ session == Smalltalk session
]

{ #category : #initialization }
UFFIOpenGLContext >> initialize [
	ownsWindow ifNil: [ ownsWindow := false ].
	self checkSession.

]

{ #category : #initialization }
UFFIOpenGLContext >> initializeWithAttributes: theGLAttributes [
	glAttributes := theGLAttributes.
	self initialize.
	
]

{ #category : #initialization }
UFFIOpenGLContext >> initializeWithAttributes: theGLAttributes forWindow: aWindow [
	glAttributes := theGLAttributes.
	ownsWindow := false.
	window := aWindow.
	self initialize.
	
]

{ #category : #version }
UFFIOpenGLContext >> isAtLeastDesktopVersionMajor: versionMajor versionMinor: versionMinor [
	^ (version first > versionMajor) or: [ version first = versionMajor and: [ version second >= versionMinor] ]
]

{ #category : #version }
UFFIOpenGLContext >> isAtLeastEmbeddedVersionMajor: versionMajor versionMinor: versionMinor [
	^ false
]

{ #category : #'version testing' }
UFFIOpenGLContext >> isAtLeastGL30 [
	^ self isAtLeastDesktopVersionMajor: 3 versionMinor: 0
]

{ #category : #'version testing' }
UFFIOpenGLContext >> isAtLeastGL31 [
	^ self isAtLeastDesktopVersionMajor: 3 versionMinor: 1
]

{ #category : #'version testing' }
UFFIOpenGLContext >> isAtLeastGL32 [
	^ self isAtLeastDesktopVersionMajor: 3 versionMinor: 2
]

{ #category : #'version testing' }
UFFIOpenGLContext >> isAtLeastGL33 [
	^ self isAtLeastDesktopVersionMajor: 3 versionMinor: 3
]

{ #category : #'version testing' }
UFFIOpenGLContext >> isAtLeastGL40 [
	^ self isAtLeastDesktopVersionMajor: 4 versionMinor: 0
]

{ #category : #'version testing' }
UFFIOpenGLContext >> isAtLeastGL42 [
	^ self isAtLeastDesktopVersionMajor: 4 versionMinor: 2
]

{ #category : #'version testing' }
UFFIOpenGLContext >> isAtLeastGL43 [
	^ self isAtLeastDesktopVersionMajor: 4 versionMinor: 3
]

{ #category : #'version testing' }
UFFIOpenGLContext >> isAtLeastGL44 [
	^ self isAtLeastDesktopVersionMajor: 4 versionMinor: 4
]

{ #category : #'version testing' }
UFFIOpenGLContext >> isAtLeastGL45 [
	^ self isAtLeastDesktopVersionMajor: 4 versionMinor: 5
]

{ #category : #'version testing' }
UFFIOpenGLContext >> isAtLeastGL46 [
	^ self isAtLeastDesktopVersionMajor: 4 versionMinor: 6
]

{ #category : #'version testing' }
UFFIOpenGLContext >> isAtLeastGLES20 [
	^ self isAtLeastEmbeddedVersionMajor: 2 versionMinor: 0
]

{ #category : #'version testing' }
UFFIOpenGLContext >> isAtLeastGLES30 [
	^ self isAtLeastEmbeddedVersionMajor: 3 versionMinor: 0
]

{ #category : #'version testing' }
UFFIOpenGLContext >> isDesktopVersion [
	^ true
]

{ #category : #'version testing' }
UFFIOpenGLContext >> isEmbeddedVersion [
	^ false
]

{ #category : #'context activation' }
UFFIOpenGLContext >> makeCurrent [
	^ renderer makeCurrent
]

{ #category : #'context activation' }
UFFIOpenGLContext >> makeCurrent: aWindow [
	^ renderer makeCurrent: aWindow
]

{ #category : #'resource creation' }
UFFIOpenGLContext >> offscreenBufferExtent: anExtent [
	^ UFFIOpenGLOffscreenTextureBuffer new
		extent: anExtent;
		context: self
		yourself
]

{ #category : #'resource creation' }
UFFIOpenGLContext >> offscreenBufferExtent: anExtent hasColorBuffer: hasColorBuffer isSRGB: isSRGB hasDepthBuffer: hasDepthBuffer hasStencilBuffer: hasStencilBuffer [
	^ UFFIOpenGLOffscreenTextureBuffer new
		extent: anExtent;
		hasColorBuffer: hasColorBuffer;
		hasDepthBuffer: hasDepthBuffer;
		hasStencilBuffer: hasStencilBuffer;
		isSRGB: isSRGB;
		context: self
		yourself
]

{ #category : #'resource creation' }
UFFIOpenGLContext >> offscreenBufferExtent: anExtent hasColorBuffer: hasColorBuffer isSRGB: isSRGB hasDepthBuffer: hasDepthBuffer hasStencilBuffer: hasStencilBuffer for: keyObject [
	^ renderTargetForObjectDictionary at: keyObject ifAbsentPut: [
			self offscreenBufferExtent: anExtent hasColorBuffer: hasColorBuffer isSRGB: isSRGB hasDepthBuffer: hasDepthBuffer hasStencilBuffer: hasStencilBuffer
		]
]

{ #category : #'resource creation' }
UFFIOpenGLContext >> offscreenBufferExtent: anExtent sampleCount: sampleCount [
	(sampleCount = 1 or: [hasMultisample not]) ifTrue: [ ^ self offscreenBufferExtent: anExtent ].
	^ UFFIOpenGLOffscreenMultisampleBuffer new
		extent: anExtent;
		sampleCount: sampleCount;
		context: self
		yourself
]

{ #category : #printing }
UFFIOpenGLContext >> printError: errorID [
	| errorMessage |
	errorMessage := ErrorDictionary at: errorID ifAbsent: [ errorID asString ].
	Transcript show: 'OpenGL error: '; show: errorMessage; cr.
	FileStream stderr nextPutAll: 'OpenGL error: '; nextPutAll: errorMessage; lf
]

{ #category : #'resource creation' }
UFFIOpenGLContext >> program [
	^ (UFFIOpenGLProgramHandle for: self)
		generate;
		yourself
]

{ #category : #accessing }
UFFIOpenGLContext >> renderer [
	^ renderer
]

{ #category : #version }
UFFIOpenGLContext >> rendererString [
	^ rendererString
]

{ #category : #'resource creation' }
UFFIOpenGLContext >> shader: type [
	^ (UFFIOpenGLShaderHandle for: self)
		type: type;
		generate;
		yourself
]

{ #category : #version }
UFFIOpenGLContext >> shadingLanguageVersion [
	^ shadingLanguageVersion
]

{ #category : #version }
UFFIOpenGLContext >> shadingLanguageVersionString [
	^ shadingLanguageVersionString
]

{ #category : #'context activation' }
UFFIOpenGLContext >> swapBuffers [
	self checkSession.
	^ renderer swapBuffers
]

{ #category : #'context activation' }
UFFIOpenGLContext >> swapBuffers: aWindow [
	self checkSession.
	^ renderer swapBuffers: aWindow backendWindow
]

{ #category : #'resource creation' }
UFFIOpenGLContext >> textureObject [
	^ (UFFIOpenGLTextureHandle for: self)
		generate;
		yourself
]

{ #category : #'resource creation' }
UFFIOpenGLContext >> textureObjectFromForm: form [
	^ textureFromFormDictionary at: form ifAbsentPut: [
		self textureObject
			uploadFromForm: form;
			yourself
	]
]

{ #category : #'resource creation' }
UFFIOpenGLContext >> textureObjectWithModificationCountFor: keyObject [
	^ (textureWithModificationCountDictionary at: keyObject ifAbsentPut: [
		self textureObject
	])

]

{ #category : #version }
UFFIOpenGLContext >> vendor [
	^ vendorString
]

{ #category : #version }
UFFIOpenGLContext >> version [
	^ version
]

{ #category : #version }
UFFIOpenGLContext >> versionString [
	^ versionString
]

{ #category : #accessing }
UFFIOpenGLContext >> window [
	^ window
]

{ #category : #'context activation' }
UFFIOpenGLContext >> withWindow: aWindow do: aBlock [
	self checkSession.
	^ renderer withWindow: aWindow backendWindow do: aBlock
]

{ #category : #'context activation' }
UFFIOpenGLContext >> withWindow: aWindow do: aBlock ifFailure: aFailureBlock [
	self checkSession.
	^ renderer withWindow: aWindow do: aBlock ifFailure: aFailureBlock
]
