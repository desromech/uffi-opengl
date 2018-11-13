"
I wrap an OpenGL buffer object handle.
"
Class {
	#name : #UFFIOpenGLBufferHandle,
	#superclass : #UFFIOpenGLIntegerHandle,
	#category : #'UFFIOpenGL-Context-Object'
}

{ #category : #finalization }
UFFIOpenGLBufferHandle class >> primitiveFinalizeOpenGL: gl resource: handleBuffer [
	gl deleteBuffers_n: 1 buffers: handleBuffer
]

{ #category : #'as yet unclassified' }
UFFIOpenGLBufferHandle >> forTarget: target setData: data withUsage: usage [
	context asCurrentDo: [
		context gl
			bindBuffer_target: target buffer: self validHandle;
			bufferData_target: target size: data size data: data usage: usage
	]

]

{ #category : #translating }
UFFIOpenGLBufferHandle >> primitiveGenerate: outputHandle [
	context gl genBuffers_n: 1 buffers: outputHandle
]
