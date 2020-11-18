"
I represent a framebuffer object that uses a texture for its color buffer.
"
Class {
	#name : #UFFIOpenGLOffscreenTextureBuffer,
	#superclass : #UFFIOpenGLOffscreenBuffer,
	#instVars : [
		'colorTexture',
		'depthTexture'
	],
	#pools : [
		'UFFIOpenGLConstants'
	],
	#category : #'UFFIOpenGL-Context-Object'
}

{ #category : #activation }
UFFIOpenGLOffscreenTextureBuffer >> activate [
	super activate.
	context gl disable: GL_MULTISAMPLE_EXT
]

{ #category : #converting }
UFFIOpenGLOffscreenTextureBuffer >> asForm [
	self checkSession.
	(form isNil or: [ form extent ~= extent ]) ifTrue: [
		form := Form extent: extent depth: 32.
	].

	form unhibernate.
	context asCurrentDo: [
		self activate.
		context gl bindFramebufferEXT_target: GL_FRAMEBUFFER_EXT framebuffer: 0.
		colorTexture readIntoForm: form
	] ifFailure: [ self error: 'Failed to read pixels into the form' ].
	^ form
]

{ #category : #accessing }
UFFIOpenGLOffscreenTextureBuffer >> colorTexture [
	^ colorTexture
]

{ #category : #'session management' }
UFFIOpenGLOffscreenTextureBuffer >> createColorBuffer [
	colorTexture := (UFFIOpenGLTextureHandle for: context) generate.
	self resizeColorBuffer.
	context gl
		framebufferTexture2DEXT_target: GL_FRAMEBUFFER_EXT attachment: GL_COLOR_ATTACHMENT0_EXT textarget: GL_TEXTURE_2D texture: colorTexture handle level: 0.

]

{ #category : #accessing }
UFFIOpenGLOffscreenTextureBuffer >> depthTexture [
	^ depthTexture
]

{ #category : #'session management' }
UFFIOpenGLOffscreenTextureBuffer >> resizeColorBuffer [
	context gl
		bindTexture_target: GL_TEXTURE_2D texture: colorTexture handle;
		texImage2D_target: GL_TEXTURE_2D level: 0 internalformat: self internalColorFormat
			width: extent x height: extent y border: 0 format: GL_RGBA type: GL_UNSIGNED_BYTE pixels: nil

]
