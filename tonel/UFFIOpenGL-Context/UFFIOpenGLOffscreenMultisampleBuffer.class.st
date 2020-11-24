"
I represent a frame buffer object that uses a multisampled color buffer for its render target.
"
Class {
	#name : #UFFIOpenGLOffscreenMultisampleBuffer,
	#superclass : #UFFIOpenGLOffscreenBuffer,
	#instVars : [
		'colorBuffer',
		'depthBuffer',
		'sampleCount',
		'resolveBuffer'
	],
	#pools : [
		'UFFIOpenGLConstants'
	],
	#category : #'UFFIOpenGL-Context-Object'
}

{ #category : #'session management' }
UFFIOpenGLOffscreenMultisampleBuffer >> asForm [
	self checkSession.
	context asCurrentDo: [
		self checkResolveBuffer.
		resolveBuffer activateDrawBuffer.
		self activateReadBuffer.
		context gl blitFramebufferEXT_srcX0: 0 srcY0: 0 srcX1: extent x srcY1: extent y
			dstX0: 0 dstY0: 0 dstX1: extent x dstY1: extent y mask: GL_COLOR_BUFFER_BIT filter: GL_NEAREST.
		^ resolveBuffer asForm
	] ifFailure: [ self error: 'Failed to read the multi sampled offscreen buffer.' ]
]

{ #category : #'session management' }
UFFIOpenGLOffscreenMultisampleBuffer >> checkResolveBuffer [
	resolveBuffer ifNil: [ resolveBuffer := context offscreenBufferExtent: extent ].
	resolveBuffer extent ~= extent ifTrue: [ resolveBuffer extent: extent]
]

{ #category : #accessing }
UFFIOpenGLOffscreenMultisampleBuffer >> colorBuffer [
	^ colorBuffer
]

{ #category : #'session management' }
UFFIOpenGLOffscreenMultisampleBuffer >> createColorBuffer [
	colorBuffer := (UFFIOpenGLRenderbufferHandle for: context) generate.
	context gl
		bindRenderbufferEXT_target: GL_RENDERBUFFER_EXT renderbuffer: colorBuffer validHandle;
		renderbufferStorageMultisampleEXT_target: GL_RENDERBUFFER_EXT samples: sampleCount internalformat: self internalColorFormat width: extent x asInteger height: extent y asInteger;
		framebufferRenderbufferEXT_target: activeTarget attachment: GL_COLOR_ATTACHMENT0 renderbuffertarget: GL_RENDERBUFFER renderbuffer: colorBuffer validHandle
]

{ #category : #accessing }
UFFIOpenGLOffscreenMultisampleBuffer >> depthBuffer [
	^ depthBuffer
]

{ #category : #activation }
UFFIOpenGLOffscreenMultisampleBuffer >> doActivate [
	super doActivate.
	context gl enable: GL_MULTISAMPLE_EXT
]

{ #category : #accessing }
UFFIOpenGLOffscreenMultisampleBuffer >> sampleCount [
	^ sampleCount
]

{ #category : #accessing }
UFFIOpenGLOffscreenMultisampleBuffer >> sampleCount: anObject [
	sampleCount := anObject
]
