Class {
	#name : #UFFIOpenGLTextureHandle,
	#superclass : #UFFIOpenGLIntegerHandle,
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
