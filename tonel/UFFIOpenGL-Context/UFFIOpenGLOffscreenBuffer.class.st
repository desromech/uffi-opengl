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
		'hasColorBuffer',
		'hasDepthBuffer',
		'hasStencilBuffer',
		'isSRGB',
		'extentChanged'
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
	(context isDesktopVersion and: [context hasSRGB]) ifTrue: [
		context gl enable: GL_FRAMEBUFFER_SRGB_EXT
	].
		
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

{ #category : #'as yet unclassified' }
UFFIOpenGLOffscreenBuffer >> blitToMainFramebuffer [
	self activateReadBuffer.
	context gl
		bindFramebufferEXT_target: GL_DRAW_FRAMEBUFFER_EXT framebuffer: 0;
		blitFramebufferEXT_srcX0: 0 srcY0: 0 srcX1: extent x srcY1: extent y
			dstX0: 0 dstY0: 0 dstX1: extent x dstY1: extent y mask: GL_COLOR_BUFFER_BIT filter: GL_NEAREST
]

{ #category : #'session management' }
UFFIOpenGLOffscreenBuffer >> checkSession [
	(session ~~ Smalltalk session) ifTrue: [
		self createSessionResources.
		session := Smalltalk session.
	].

	self resizeAttachments
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

{ #category : #'session management' }
UFFIOpenGLOffscreenBuffer >> createDepthStencilBuffer [
	(hasDepthBuffer not and: [ hasStencilBuffer not ]) ifTrue: [ ^ self ].
	
	self flag: 'TODO: Create the depth stencil buffer.'.
	self resizeDepthStencilBuffer
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
			createDepthStencilBuffer.
			
		extentChanged := false
	] ifFailure: [ self error: 'Failed to set the OpenGL context.' ]
]

{ #category : #accessing }
UFFIOpenGLOffscreenBuffer >> extent [
	^ extent
]

{ #category : #accessing }
UFFIOpenGLOffscreenBuffer >> extent: newExtent [
	extentChanged := extent ~= newExtent.
	extent := newExtent
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
UFFIOpenGLOffscreenBuffer >> hasColorBuffer [
	^ hasColorBuffer
]

{ #category : #accessing }
UFFIOpenGLOffscreenBuffer >> hasColorBuffer: anObject [
	hasColorBuffer := anObject
]

{ #category : #accessing }
UFFIOpenGLOffscreenBuffer >> hasDepthBuffer [
	^ hasDepthBuffer
]

{ #category : #accessing }
UFFIOpenGLOffscreenBuffer >> hasDepthBuffer: anObject [
	hasDepthBuffer := anObject
]

{ #category : #accessing }
UFFIOpenGLOffscreenBuffer >> hasStencilBuffer [
	^ hasStencilBuffer
]

{ #category : #accessing }
UFFIOpenGLOffscreenBuffer >> hasStencilBuffer: anObject [
	hasStencilBuffer := anObject
]

{ #category : #accessing }
UFFIOpenGLOffscreenBuffer >> height [
	^ extent y
]

{ #category : #initialization }
UFFIOpenGLOffscreenBuffer >> initialize [
	super initialize.
	extentChanged := true.
	hasColorBuffer := true.
	hasDepthBuffer := false.
	hasStencilBuffer := false.
	isSRGB := true.
]

{ #category : #'as yet unclassified' }
UFFIOpenGLOffscreenBuffer >> internalColorFormat [
	^ (context hasSRGB and: [isSRGB]) ifTrue: [ GL_SRGB8_ALPHA8_EXT ] ifFalse: [ GL_RGBA8 ]
]

{ #category : #accessing }
UFFIOpenGLOffscreenBuffer >> isSRGB [
	^ isSRGB
]

{ #category : #accessing }
UFFIOpenGLOffscreenBuffer >> isSRGB: anObject [
	isSRGB := anObject
]

{ #category : #'session management' }
UFFIOpenGLOffscreenBuffer >> resizeAttachments [
	extentChanged ifFalse: [ ^ self ].
	
	context asCurrentDo: [
		self
			resizeColorBuffer;
			resizeDepthStencilBuffer.
			
		extentChanged := false
	] ifFailure: [ self error: 'Failed to resize the framebuffer attachments.' ]
]

{ #category : #'session management' }
UFFIOpenGLOffscreenBuffer >> resizeColorBuffer [
	self subclassResponsibility
]

{ #category : #'session management' }
UFFIOpenGLOffscreenBuffer >> resizeDepthStencilBuffer [
]

{ #category : #accessing }
UFFIOpenGLOffscreenBuffer >> width [
	^ extent x
]
