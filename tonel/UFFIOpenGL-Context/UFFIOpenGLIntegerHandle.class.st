Class {
	#name : #UFFIOpenGLIntegerHandle,
	#superclass : #UFFIOpenGLHandle,
	#pools : [
		'UFFIOpenGLConstants'
	],
	#category : #'UFFIOpenGL-Context-Object'
}

{ #category : #finalization }
UFFIOpenGLIntegerHandle class >> finalizeResourceData: contextAndHandle [
	| context handle handleBuffer |
	context := contextAndHandle first.
	handle := contextAndHandle second.
	context hasValidSession ifFalse: [ ^ self ].
	context asCurrentDo: [ 
		handleBuffer := ByteArray new: 4.
		handleBuffer unsignedLongAt: 1 put: handle.
		self primitiveFinalizeOpenGL: context gl resource: handleBuffer
	]
]

{ #category : #translating }
UFFIOpenGLIntegerHandle >> generate [	
	| handleBuffer |
	handleBuffer := ByteArray new: 4.
	self primitiveGenerate: handleBuffer.
	handle := handleBuffer unsignedLongAt: 1.
	handle ~= 0 ifTrue: [ self registerFinalization ]
]

{ #category : #translating }
UFFIOpenGLIntegerHandle >> primitiveGenerate: outputHandle [
	self subclassResponsibility
]
