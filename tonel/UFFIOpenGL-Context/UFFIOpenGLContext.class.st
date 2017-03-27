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
		'extensionsString',
		'version',
		'shadingLanguageVersion',
		'hasSRGB',
		'hasMultisample'
	],
	#classVars : [
		'ErrorDictionary',
		'GlobalContext',
		'Session'
	],
	#pools : [
		'UFFIOpenGLConstants'
	],
	#category : #'UFFIOpenGL-Context'
}

{ #category : #settings }
UFFIOpenGLContext class >> glAttributes [
	^ OSWindowGLAttributes new.
]

{ #category : #accessing }
UFFIOpenGLContext class >> globalContext [
	(Session ~~ Smalltalk session or: [ GlobalContext isNil ]) ifTrue: [
		GlobalContext := self new.
		Session := Smalltalk session.
	].
	^ GlobalContext
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
	hasSRGB := (self hasExtension: #GL_EXT_texture_sRGB) and: [ self hasExtension: #GL_EXT_framebuffer_sRGB ].
	hasMultisample := self hasExtension: #GL_EXT_framebuffer_multisample.
	
]

{ #category : #'session management' }
UFFIOpenGLContext >> checkSession [
	| glAttributes attributes |
	session == Smalltalk session ifTrue: [ ^ self ].
	glAttributes := self class glAttributes.
	attributes := OSWindowAttributes new
		visible: false;
		extent: 1@1;
		glAttributes: glAttributes
		yourself.

	window := OSWindow createWithAttributes: attributes.
	renderer := window newOpenGLRenderer.
	(Smalltalk platformName beginsWith: 'Mac') ifTrue: [
		window show; hide
	].

	session := Smalltalk session.
	
	self asCurrentDo: [
		versionString := (self gl getString: GL_VERSION) readString.
		vendorString := (self gl getString:  GL_VENDOR) readString.
		rendererString := (self gl getString:  GL_RENDERER) readString.
		shadingLanguageVersionString := (self gl getString: GL_SHADING_LANGUAGE_VERSION) readString.
		extensionsString := (self gl getString: GL_EXTENSIONS) readString.
	].

	version :=  (versionString splitOn: '.') collect: #asInteger.
	shadingLanguageVersion :=  (shadingLanguageVersionString splitOn: '.') collect: #asInteger.
	self checkImportantExtensions
]

{ #category : #initialization }
UFFIOpenGLContext >> destroy [
	window ifNotNil: [window destroy].
	window := nil
]

{ #category : #version }
UFFIOpenGLContext >> extensionsString [
	^ extensionsString
]

{ #category : #accessing }
UFFIOpenGLContext >> gl [
	gl ifNil: [ gl := UFFIOpenGL new ].
	^ gl
]

{ #category : #extensions }
UFFIOpenGLContext >> hasExtension: extensionName [
	^ extensionsString includesSubstring: extensionName
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
	self checkSession.

]

{ #category : #'version testing' }
UFFIOpenGLContext >> isAtLeastGL30 [
	^ self isAtLeastVersionMajor: 3 versionMinor: 0
]

{ #category : #'version testing' }
UFFIOpenGLContext >> isAtLeastGL31 [
	^ self isAtLeastVersionMajor: 3 versionMinor: 1
]

{ #category : #'version testing' }
UFFIOpenGLContext >> isAtLeastGL32 [
	^ self isAtLeastVersionMajor: 3 versionMinor: 2
]

{ #category : #'version testing' }
UFFIOpenGLContext >> isAtLeastGL33 [
	^ self isAtLeastVersionMajor: 3 versionMinor: 3
]

{ #category : #'version testing' }
UFFIOpenGLContext >> isAtLeastGL40 [
	^ self isAtLeastVersionMajor: 4 versionMinor: 0
]

{ #category : #'version testing' }
UFFIOpenGLContext >> isAtLeastGL42 [
	^ self isAtLeastVersionMajor: 4 versionMinor: 2
]

{ #category : #'version testing' }
UFFIOpenGLContext >> isAtLeastGL43 [
	^ self isAtLeastVersionMajor: 4 versionMinor: 3
]

{ #category : #'version testing' }
UFFIOpenGLContext >> isAtLeastGL44 [
	^ self isAtLeastVersionMajor: 4 versionMinor: 4
]

{ #category : #'version testing' }
UFFIOpenGLContext >> isAtLeastGL45 [
	^ self isAtLeastVersionMajor: 4 versionMinor: 4
]

{ #category : #version }
UFFIOpenGLContext >> isAtLeastVersionMajor: versionMajor versionMinor: versionMinor [
	^ (version first > versionMajor) or: [ version first = versionMajor and: [ version second >= versionMinor] ]
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
	^ renderer swapBuffers: aWindow
]

{ #category : #'resource creation' }
UFFIOpenGLContext >> textureObject [
	^ (UFFIOpenGLTextureHandle for: self)
		generate;
		yourself
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
	^ renderer withWindow: aWindow do: aBlock
]

{ #category : #'context activation' }
UFFIOpenGLContext >> withWindow: aWindow do: aBlock ifFailure: aFailureBlock [
	self checkSession.
	^ renderer withWindow: aWindow do: aBlock ifFailure: aFailureBlock
]
