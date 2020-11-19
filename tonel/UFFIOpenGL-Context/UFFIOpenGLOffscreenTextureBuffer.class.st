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
	context gl
		bindTexture_target: GL_TEXTURE_2D texture: colorTexture handle;
		texImage2D_target: GL_TEXTURE_2D level: 0 internalformat: self internalColorFormat
			width: extent x height: extent y border: 0 format: GL_RGBA type: GL_UNSIGNED_BYTE pixels: nil;
		texParameteri_target: GL_TEXTURE_2D pname: GL_TEXTURE_MIN_FILTER param: GL_LINEAR;
		texParameteri_target: GL_TEXTURE_2D pname: GL_TEXTURE_MAG_FILTER param: GL_LINEAR;
		framebufferTexture2DEXT_target: activeTarget attachment: GL_COLOR_ATTACHMENT0_EXT textarget: GL_TEXTURE_2D texture: colorTexture handle level: 0.
]

{ #category : #accessing }
UFFIOpenGLOffscreenTextureBuffer >> depthTexture [
	^ depthTexture
]

{ #category : #activation }
UFFIOpenGLOffscreenTextureBuffer >> doActivate [
	super doActivate.
	context isEmbeddedVersion ifFalse: [ 
		context gl disable: GL_MULTISAMPLE_EXT
	].

]
