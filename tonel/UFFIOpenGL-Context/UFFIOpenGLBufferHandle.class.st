Class {
	#name : #UFFIOpenGLBufferHandle,
	#superclass : #UFFIOpenGLIntegerHandle,
	#category : #'UFFIOpenGL-Context-Object'
}

{ #category : #finalization }
UFFIOpenGLBufferHandle class >> primitiveFinalizeOpenGL: gl resource: handleBuffer [
	gl deleteBuffers_n: 1 buffers: handleBuffer
]

{ #category : #translating }
UFFIOpenGLBufferHandle >> primitiveGenerate: outputHandle [
	context gl genBuffers_n: 1 buffers: outputHandle
]
