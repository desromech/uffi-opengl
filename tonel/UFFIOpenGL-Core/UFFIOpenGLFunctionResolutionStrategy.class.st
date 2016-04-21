Class {
	#name : #UFFIOpenGLFunctionResolutionStrategy,
	#superclass : #FFIFunctionResolutionStrategy,
	#category : #'UFFIOpenGL-Core'
}

{ #category : #'as yet unclassified' }
UFFIOpenGLFunctionResolutionStrategy >> isApplicableFor: aRequestor [
	^ aRequestor optionAt: #optIndirectCallOpenGL
]

{ #category : #'as yet unclassified' }
UFFIOpenGLFunctionResolutionStrategy >> resolve: anExternalFunction [
	anExternalFunction setHandle: (SDL2 glGetProcAddress: anExternalFunction name) getHandle.
]
