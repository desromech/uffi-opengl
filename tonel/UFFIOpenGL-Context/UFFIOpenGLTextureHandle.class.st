"
I wrap an OpenGL texture object handle.
"
Class {
	#name : #UFFIOpenGLTextureHandle,
	#superclass : #UFFIOpenGLIntegerHandle,
	#instVars : [
		'modificationCount'
	],
	#category : #'UFFIOpenGL-Context-Object'
}

{ #category : #finalization }
UFFIOpenGLTextureHandle class >> primitiveFinalizeOpenGL: gl resource: handleBuffer [
	gl deleteTextures_n: 1 textures: handleBuffer
]

{ #category : #translating }
UFFIOpenGLTextureHandle >> primitiveGenerate: outputHandle [
	context gl genTextures_n: 1 textures: outputHandle
]

{ #category : #transfering }
UFFIOpenGLTextureHandle >> readIntoForm: form [
	context asCurrentDo: [ 
		form unhibernate.
		context gl
			bindTexture_target: GL_TEXTURE_2D texture: handle;
			pixelStorei_pname: GL_PACK_ALIGNMENT param: 1;
			pixelStorei_pname: GL_PACK_ROW_LENGTH param: form width;
			pixelStorei_pname: GL_PACK_IMAGE_HEIGHT param: form height;
			pixelStorei_pname: GL_PACK_SKIP_PIXELS param: 0;
			pixelStorei_pname: GL_PACK_SKIP_ROWS param: 0;
			pixelStorei_pname: GL_PACK_SKIP_IMAGES param: 0;
			getTexImage_target: GL_TEXTURE_2D level: 0 format: GL_BGRA type: GL_UNSIGNED_BYTE pixels: form bits
	]

]

{ #category : #transfering }
UFFIOpenGLTextureHandle >> uploadFromAthensSurface: athensSurface [
	context asCurrentDo: [
		| internalFormat format |

		internalFormat := context hasSRGB ifTrue: [ GL_SRGB_ALPHA ] ifFalse: [ GL_RGBA ].
		format := context isEmbeddedVersion ifTrue: [ GL_RGBA ] ifFalse: [ GL_BGRA ].
	
		context gl
			bindTexture_target: GL_TEXTURE_2D texture: handle;
			pixelStorei_pname: GL_UNPACK_ALIGNMENT param: 1;
			pixelStorei_pname: GL_UNPACK_ROW_LENGTH param: athensSurface width;
			pixelStorei_pname: GL_UNPACK_IMAGE_HEIGHT param: athensSurface height;
			pixelStorei_pname: GL_UNPACK_SKIP_PIXELS param: 0;
			pixelStorei_pname: GL_UNPACK_SKIP_ROWS param: 0;
			pixelStorei_pname: GL_UNPACK_SKIP_IMAGES param: 0;
			texImage2D_target: GL_TEXTURE_2D level: 0 internalformat: internalFormat width: athensSurface width height: athensSurface height border: 0 format: format type: GL_UNSIGNED_BYTE pixels: athensSurface getDataPtr;
			texParameteri_target: GL_TEXTURE_2D pname: GL_TEXTURE_MIN_FILTER param: GL_LINEAR;
			texParameteri_target: GL_TEXTURE_2D pname: GL_TEXTURE_MAG_FILTER param: GL_LINEAR
	]

]

{ #category : #transfering }
UFFIOpenGLTextureHandle >> uploadFromAthensSurface: athensSurface withModificationCount: newModificationCount [
	(modificationCount isNil or: [modificationCount ~~ newModificationCount]) ifTrue: [ 
		self uploadFromAthensSurface: athensSurface.
		modificationCount := newModificationCount.
	]
]

{ #category : #transfering }
UFFIOpenGLTextureHandle >> uploadFromForm: form [
	context asCurrentDo: [
		| convertedForm internalFormat format |
		convertedForm := form.
		convertedForm depth = 32 ifFalse: [
			convertedForm := form asFormOfDepth: 32
		].

		internalFormat := context hasSRGB ifTrue: [ GL_SRGB_ALPHA ] ifFalse: [ GL_RGBA ].
		format := context isEmbeddedVersion ifTrue: [ GL_RGBA ] ifFalse: [ GL_BGRA ].
	
		convertedForm unhibernate.
		context gl
			bindTexture_target: GL_TEXTURE_2D texture: handle;
			pixelStorei_pname: GL_UNPACK_ALIGNMENT param: 1;
			pixelStorei_pname: GL_UNPACK_ROW_LENGTH param: form width;
			pixelStorei_pname: GL_UNPACK_IMAGE_HEIGHT param: form height;
			pixelStorei_pname: GL_UNPACK_SKIP_PIXELS param: 0;
			pixelStorei_pname: GL_UNPACK_SKIP_ROWS param: 0;
			pixelStorei_pname: GL_UNPACK_SKIP_IMAGES param: 0;
			texImage2D_target: GL_TEXTURE_2D level: 0 internalformat: internalFormat width: form width height: form height border: 0 format: format type: GL_UNSIGNED_BYTE pixels: convertedForm bits;
			texParameteri_target: GL_TEXTURE_2D pname: GL_TEXTURE_MIN_FILTER param: GL_LINEAR;
			texParameteri_target: GL_TEXTURE_2D pname: GL_TEXTURE_MAG_FILTER param: GL_LINEAR
	]

]

{ #category : #transfering }
UFFIOpenGLTextureHandle >> uploadFromForm: form withModificationCount: newModificationCount [
	(modificationCount isNil or: [modificationCount ~~ newModificationCount]) ifTrue: [ 
		self uploadFromForm: form.
		modificationCount := newModificationCount.
	]
]
