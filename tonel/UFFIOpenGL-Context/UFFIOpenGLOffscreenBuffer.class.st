"
I represent a framebuffer object.
"
Class {
	#name : #UFFIOpenGLOffscreenBuffer,
	#superclass : #Object,
	#instVars : [
		'context',
		'extent',
		'form',
		'framebufferObject',
		'session',
		'hasDepthBuffer',
		'hasStencilBuffer'
	],
	#pools : [
		'UFFIOpenGLConstants'
	],
	#category : #'UFFIOpenGL-Context-Object'
}

{ #category : #activation }
UFFIOpenGLOffscreenBuffer >> activate [
	self checkSession.
	context gl
		bindFramebufferEXT_target: GL_FRAMEBUFFER_EXT framebuffer: framebufferObject handle.
	context hasSRGB ifTrue: [ context gl enable: GL_FRAMEBUFFER_SRGB_EXT ].
		
]

{ #category : #activation }
UFFIOpenGLOffscreenBuffer >> activateDrawBuffer [
	self checkSession.
	context gl bindFramebufferEXT_target: GL_DRAW_FRAMEBUFFER_EXT framebuffer: framebufferObject handle
]

{ #category : #activation }
UFFIOpenGLOffscreenBuffer >> activateReadBuffer [
	self checkSession.
	context gl bindFramebufferEXT_target: GL_READ_FRAMEBUFFER_EXT framebuffer: framebufferObject handle
]

{ #category : #converting }
UFFIOpenGLOffscreenBuffer >> asForm [
	self subclassResponsibility
]

{ #category : #'session management' }
UFFIOpenGLOffscreenBuffer >> checkSession [
	(session ~~ Smalltalk session) ifTrue: [
		self createSessionResources.
		session := Smalltalk session.
	]
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
	self subclassResponsibility
]

{ #category : #'as yet unclassified' }
UFFIOpenGLOffscreenBuffer >> createDepthStencilBuffer [
	(hasDepthBuffer not and: [ hasStencilBuffer not ]) ifTrue: [ ^ self ].
	
	self flag: 'TODO: Create the depth stencil buffer.'
]

{ #category : #'session management' }
UFFIOpenGLOffscreenBuffer >> createFramebufferObject [
	framebufferObject := (UFFIOpenGLFBOHandle for: context) generate.
	context gl bindFramebufferEXT_target: GL_FRAMEBUFFER_EXT framebuffer: framebufferObject handle.
]

{ #category : #'session management' }
UFFIOpenGLOffscreenBuffer >> createSessionResources [
	context asCurrentDo: [
		self
			createFramebufferObject;
			createColorBuffer;
			createDepthStencilBuffer
		
	] ifFailure: [ self error: 'Failed to set the OpenGL context.' ]
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
	hasDepthBuffer := false.
	hasStencilBuffer := false.
]

{ #category : #'as yet unclassified' }
UFFIOpenGLOffscreenBuffer >> internalColorFormat [
	^ context hasSRGB ifTrue: [ GL_SRGB8_ALPHA8_EXT ] ifFalse: [ GL_RGBA8 ]
]

{ #category : #'session management' }
UFFIOpenGLOffscreenBuffer >> resizeAttachments [
]

{ #category : #accessing }
UFFIOpenGLOffscreenBuffer >> width [
	^ extent x
]
