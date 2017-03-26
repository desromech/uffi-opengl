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
		self resizeAttachments.
	].

	form unhibernate.
	context asCurrentDo: [
		self activate.
		context gl
			bindFramebufferEXT_target: GL_FRAMEBUFFER_EXT framebuffer: 0;
			bindTexture_target: GL_TEXTURE_2D texture: colorTexture handle;
			pixelStorei_pname: GL_PACK_ALIGNMENT param: 1;
			pixelStorei_pname: GL_PACK_ROW_LENGTH param: extent x;
			pixelStorei_pname: GL_PACK_IMAGE_HEIGHT param: extent y;
			pixelStorei_pname: GL_PACK_SKIP_PIXELS param: 0;
			pixelStorei_pname: GL_PACK_SKIP_ROWS param: 0;
			pixelStorei_pname: GL_PACK_SKIP_IMAGES param: 0;
			getTexImage_target: GL_TEXTURE_2D level: 0 format: GL_BGRA type: GL_UNSIGNED_BYTE pixels: form bits
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
		framebufferTexture2DEXT_target: GL_FRAMEBUFFER_EXT attachment: GL_COLOR_ATTACHMENT0_EXT textarget: GL_TEXTURE_2D texture: colorTexture handle level: 0.

]

{ #category : #accessing }
UFFIOpenGLOffscreenTextureBuffer >> depthTexture [
	^ depthTexture
]
