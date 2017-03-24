Class {
	#name : #UFFIOpenGLProgramHandle,
	#superclass : #UFFIOpenGLHandle,
	#pools : [
		'UFFIOpenGLConstants'
	],
	#category : #'UFFIOpenGL-Context-Object'
}

{ #category : #finalization }
UFFIOpenGLProgramHandle class >> primitiveFinalizeOpenGL: gl resource: handle [
	gl deleteProgram: handle
]

{ #category : #utilities }
UFFIOpenGLProgramHandle >> attach: shader [
	context gl attachShader_program: self validHandle shader: shader validHandle
]

{ #category : #'as yet unclassified' }
UFFIOpenGLProgramHandle >> bindAttribute: attributeName location: location [
	| namePointer |
	namePointer := ExternalAddress fromString: attributeName.
	[ 
		context gl bindAttribLocation_program: self validHandle index: location name: namePointer
	] ensure: [ namePointer free]
	
]

{ #category : #translating }
UFFIOpenGLProgramHandle >> generate [
	context asCurrentDo: [ 
		handle := context gl createProgram.
	].

	handle ~= 0 ifTrue: [ self registerFinalization ]
]

{ #category : #accessing }
UFFIOpenGLProgramHandle >> infoLog [
	| maxLength memory |
	maxLength := self infoLogLength.
	memory := ExternalAddress allocate: maxLength + 1.
	[
		context gl getProgramInfoLog_program: self validHandle bufSize: maxLength length: nil infoLog: memory.
		memory byteAt: maxLength + 1 put: 0.
		^ memory readString
	] ensure: [ memory free ]
]

{ #category : #'as yet unclassified' }
UFFIOpenGLProgramHandle >> infoLogLength [
	| result |
	result := ByteArray new: 4.
	context gl getProgramiv_program: self validHandle pname: GL_INFO_LOG_LENGTH params: result.
	^ result unsignedLongAt: 1
]

{ #category : #utilities }
UFFIOpenGLProgramHandle >> link [
	context gl linkProgram: self validHandle
]

{ #category : #'as yet unclassified' }
UFFIOpenGLProgramHandle >> linkStatus [
	| result |
	result := ByteArray new: 4.
	context gl getProgramiv_program: self validHandle pname: GL_LINK_STATUS params: result.
	^ (result unsignedLongAt: 1) = GL_TRUE
]
