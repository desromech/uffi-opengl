Class {
	#name : #UFFIOpenGLProgramHandle,
	#superclass : #UFFIOpenGLHandle,
	#instVars : [
		'uniformLocationMap'
	],
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

{ #category : #uniforms }
UFFIOpenGLProgramHandle >> primitiveUniformLocation: aName [
	| namePointer |
	namePointer := ExternalAddress fromString: aName.
	[ 
		^ context gl getUniformLocation_program: self validHandle name: namePointer
	] ensure: [ namePointer free ]
	
]

{ #category : #uniforms }
UFFIOpenGLProgramHandle >> uniform: name float: value [
	context gl uniform1f_location: (self uniformLocation: name) v0: value
]

{ #category : #uniforms }
UFFIOpenGLProgramHandle >> uniform: name float: value float: value2 [
	context gl uniform2f_location: (self uniformLocation: name) v0: value v1: value2
]

{ #category : #uniforms }
UFFIOpenGLProgramHandle >> uniform: name float: value float: value2 float: value3 [
	context gl uniform3f_location: (self uniformLocation: name) v0: value v1: value2 v2: value3
]

{ #category : #uniforms }
UFFIOpenGLProgramHandle >> uniform: name float: value float: value2 float: value3 float: value4 [
	context gl uniform4f_location: (self uniformLocation: name) v0: value v1: value2 v2: value3 v3: value4
]

{ #category : #uniforms }
UFFIOpenGLProgramHandle >> uniform: name int: value [
	context gl uniform1i_location: (self uniformLocation: name) v0: value
]

{ #category : #uniforms }
UFFIOpenGLProgramHandle >> uniform: name transposedMatrix3: matrixData [
	context gl uniformMatrix3fv_location: (self uniformLocation: name) count: 1 transpose: true value: matrixData
]

{ #category : #uniforms }
UFFIOpenGLProgramHandle >> uniform: name transposedMatrix4: matrixData [
	context gl uniformMatrix4fv_location: (self uniformLocation: name) count: 1 transpose: true value: matrixData
]

{ #category : #uniforms }
UFFIOpenGLProgramHandle >> uniformLocation: aName [
	^ self uniformLocationMap at: aName ifAbsentPut: [ self primitiveUniformLocation: aName asString ]
]

{ #category : #accessing }
UFFIOpenGLProgramHandle >> uniformLocationMap [
	^ uniformLocationMap ifNil: [ uniformLocationMap := Dictionary new ]
]
