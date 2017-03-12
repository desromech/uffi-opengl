Class {
	#name : #UFFIOpenGLFBOHandle,
	#superclass : #UFFIOpenGLIntegerHandle,
	#category : #'UFFIOpenGL-Context-Object'
}

{ #category : #finalization }
UFFIOpenGLFBOHandle class >> primitiveFinalizeOpenGL: gl resource: handleBuffer [
	gl deleteFramebuffers_n: 1 framebuffers: handleBuffer
]

{ #category : #translating }
UFFIOpenGLFBOHandle >> primitiveGenerate: outputHandle [
	context gl genFramebuffers_n: 1 framebuffers: outputHandle
]
