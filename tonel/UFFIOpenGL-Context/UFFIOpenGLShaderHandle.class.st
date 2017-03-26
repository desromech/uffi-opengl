"
I wrap a GLSL shader object.
"
Class {
	#name : #UFFIOpenGLShaderHandle,
	#superclass : #UFFIOpenGLHandle,
	#instVars : [
		'type'
	],
	#pools : [
		'UFFIOpenGLConstants'
	],
	#category : #'UFFIOpenGL-Context-Object'
}

{ #category : #finalization }
UFFIOpenGLShaderHandle class >> primitiveFinalizeOpenGL: gl resource: handle [
	gl deleteShader: handle
]

{ #category : #accessing }
UFFIOpenGLShaderHandle >> compile [
	context gl compileShader: self validHandle.
]

{ #category : #accessing }
UFFIOpenGLShaderHandle >> compileStatus [
	| result |
	result := ByteArray new: 4.
	context gl getShaderiv_shader: self validHandle pname: GL_COMPILE_STATUS params: result.
	^ (result unsignedLongAt: 1) = GL_TRUE
]

{ #category : #translating }
UFFIOpenGLShaderHandle >> generate [
	context asCurrentDo: [ 
		handle := context gl createShader: type.
	].

	handle ~= 0 ifTrue: [ self registerFinalization ]
]

{ #category : #accessing }
UFFIOpenGLShaderHandle >> infoLog [
	| maxLength memory |
	maxLength := self infoLogLength.
	memory := ExternalAddress allocate: maxLength + 1.
	[
		context gl getShaderInfoLog_shader: self validHandle bufSize: maxLength length: nil infoLog: memory.
		memory byteAt: maxLength + 1 put: 0.
		^ memory readString
	] ensure: [ memory free ]
]

{ #category : #accessing }
UFFIOpenGLShaderHandle >> infoLogLength [
	| result |
	result := ByteArray new: 4.
	context gl getShaderiv_shader: self validHandle pname: GL_INFO_LOG_LENGTH params: result.
	^ result unsignedLongAt: 1
]

{ #category : #accessing }
UFFIOpenGLShaderHandle >> source: source [
	| sourceString |
	sourceString := ExternalAddress fromString: (source copyReplaceAll: String cr with: String lf).
	[
		context gl
			shaderSource_shader: self validHandle count: 1 string: sourceString length: nil
	] ensure: [ sourceString free]

]

{ #category : #accessing }
UFFIOpenGLShaderHandle >> type [
	^ type
]

{ #category : #accessing }
UFFIOpenGLShaderHandle >> type: anObject [
	type := anObject
]
