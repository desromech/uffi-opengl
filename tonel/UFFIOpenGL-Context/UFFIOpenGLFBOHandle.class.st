"
I wrap an OpenGL FBO object handle.
"
Class {
	#name : #UFFIOpenGLFBOHandle,
	#superclass : #UFFIOpenGLIntegerHandle,
	#category : #'UFFIOpenGL-Context-Object'
}

{ #category : #finalization }
UFFIOpenGLFBOHandle class >> primitiveFinalizeOpenGL: gl resource: handleBuffer [
	gl deleteFramebuffersEXT_n: 1 framebuffers: handleBuffer
]

{ #category : #translating }
UFFIOpenGLFBOHandle >> primitiveGenerate: outputHandle [
	context gl genFramebuffersEXT_n: 1 framebuffers: outputHandle
]
