Class {
	#name : #UFFIOpenGLOffscreenBuffer,
	#superclass : #Object,
	#instVars : [
		'context',
		'extent',
		'form',
		'framebufferObject',
		'colorTexture',
		'depthTexture',
		'session'
	],
	#pools : [
		'UFFIOpenGLConstants'
	],
	#category : #'UFFIOpenGL-Context-Object'
}

{ #category : #activation }
UFFIOpenGLOffscreenBuffer >> activate [
	self checkSession.
	context gl bindFramebuffer_target: GL_FRAMEBUFFER framebuffer: framebufferObject handle
]

{ #category : #converting }
UFFIOpenGLOffscreenBuffer >> asForm [
	self checkSession.
	(form isNil or: [ form extent ~= extent ]) ifTrue: [
		form := Form extent: extent depth: 32.
		self resizeAttachments.
	].

	form unhibernate.
	context asCurrentDo: [
		self activate.
		context gl
			bindFramebuffer_target: GL_FRAMEBUFFER framebuffer: 0;
			bindTexture_target: GL_TEXTURE_2D texture: colorTexture handle;
			pixelStorei_pname: GL_PACK_ALIGNMENT param: 4;
			pixelStorei_pname: GL_PACK_ROW_LENGTH param: extent x;
			pixelStorei_pname: GL_PACK_IMAGE_HEIGHT param: extent y;
			pixelStorei_pname: GL_PACK_SKIP_PIXELS param: 0;
			pixelStorei_pname: GL_PACK_SKIP_ROWS param: 0;
			pixelStorei_pname: GL_PACK_SKIP_IMAGES param: 0;
			getTexImage_target: GL_TEXTURE_2D level: 0 format: GL_BGRA type: GL_UNSIGNED_BYTE pixels: form bits
	] ifFailure: [ self error: 'Failed to read pixels into the form' ].
	^ form
]

{ #category : #'session management' }
UFFIOpenGLOffscreenBuffer >> checkSession [
	(session ~~ Smalltalk session) ifTrue: [
		self createSessionResources.
		session := Smalltalk session.
	]
]

{ #category : #accessing }
UFFIOpenGLOffscreenBuffer >> colorTexture [
	^ colorTexture
]

{ #category : #accessing }
UFFIOpenGLOffscreenBuffer >> context [
	^ context
]

{ #category : #accessing }
UFFIOpenGLOffscreenBuffer >> context: anObject [
	context := anObject
]

{ #category : #'session management' }
UFFIOpenGLOffscreenBuffer >> createColorBuffer [
	colorTexture := (UFFIOpenGLTextureHandle for: context) generate.
	context gl
		bindTexture_target: GL_TEXTURE_2D texture: colorTexture handle;
		texImage2D_target: GL_TEXTURE_2D level: 0 internalformat: GL_RGBA
			width: extent x height: extent y border: 0 format: GL_RGBA type: GL_UNSIGNED_BYTE pixels: nil;
		framebufferTexture2D_target: GL_FRAMEBUFFER attachment: GL_COLOR_ATTACHMENT0 textarget: GL_TEXTURE_2D texture: colorTexture handle level: 0.

]

{ #category : #'session management' }
UFFIOpenGLOffscreenBuffer >> createFramebufferObject [
	framebufferObject := (UFFIOpenGLFBOHandle for: context) generate.
	context gl bindFramebuffer_target: GL_FRAMEBUFFER framebuffer: framebufferObject handle.
]

{ #category : #'session management' }
UFFIOpenGLOffscreenBuffer >> createSessionResources [
	context asCurrentDo: [
		self
			createFramebufferObject;
			createColorBuffer.
		
	] ifFailure: [ self error: 'Failed to set the OpenGL context.' ]
]

{ #category : #accessing }
UFFIOpenGLOffscreenBuffer >> depthTexture [
	^ depthTexture
]

{ #category : #accessing }
UFFIOpenGLOffscreenBuffer >> extent [
	^ extent
]

{ #category : #accessing }
UFFIOpenGLOffscreenBuffer >> extent: anObject [
	extent := anObject
]

{ #category : #accessing }
UFFIOpenGLOffscreenBuffer >> framebufferObject [
	^ framebufferObject
]

{ #category : #accessing }
UFFIOpenGLOffscreenBuffer >> framebufferObject: anObject [
	framebufferObject := anObject
]

{ #category : #accessing }
UFFIOpenGLOffscreenBuffer >> height [
	^ extent y
]

{ #category : #initialization }
UFFIOpenGLOffscreenBuffer >> initialize [
	super initialize.
	
]

{ #category : #'session management' }
UFFIOpenGLOffscreenBuffer >> resizeAttachments [
]

{ #category : #accessing }
UFFIOpenGLOffscreenBuffer >> width [
	^ extent x
]
