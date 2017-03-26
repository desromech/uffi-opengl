"
I wrap an OpenGL render buffer object handle.
"
Class {
	#name : #UFFIOpenGLRenderbufferHandle,
	#superclass : #UFFIOpenGLIntegerHandle,
	#category : #'UFFIOpenGL-Context-Object'
}

{ #category : #finalization }
UFFIOpenGLRenderbufferHandle class >> primitiveFinalizeOpenGL: gl resource: handleBuffer [
	gl deleteRenderbuffersEXT_n: 1 renderbuffers: handleBuffer
]

{ #category : #translating }
UFFIOpenGLRenderbufferHandle >> primitiveGenerate: outputHandle [
	context gl genRenderbuffersEXT_n: 1 renderbuffers: outputHandle
]
