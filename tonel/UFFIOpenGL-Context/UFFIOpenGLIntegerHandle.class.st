Class {
	#name : #UFFIOpenGLIntegerHandle,
	#superclass : #Object,
	#instVars : [
		'handle',
		'context'
	],
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

{ #category : #'instance creation' }
UFFIOpenGLIntegerHandle class >> for: context [
	^ self new context: context;
		yourself
]

{ #category : #'instance creation' }
UFFIOpenGLIntegerHandle class >> for: context handle: value [
	^ self new context: context;
		handle: value;
		yourself
]

{ #category : #finalization }
UFFIOpenGLIntegerHandle class >> primitiveFinalizeOpenGL: gl resource: handleBuffer [
	self subclassResponsibility
]

{ #category : #accessing }
UFFIOpenGLIntegerHandle >> context [
	^ context
]

{ #category : #accessing }
UFFIOpenGLIntegerHandle >> context: anObject [
	context := anObject
]

{ #category : #translating }
UFFIOpenGLIntegerHandle >> generate [	
	| handleBuffer |
	handleBuffer := ByteArray new: 4.
	self primitiveGenerate: handleBuffer.
	handle := handleBuffer unsignedLongAt: 1.
	handle ~= 0 ifTrue: [ self registerFinalization ]
]

{ #category : #accessing }
UFFIOpenGLIntegerHandle >> handle [
	^ handle
]

{ #category : #accessing }
UFFIOpenGLIntegerHandle >> handle: anObject [
	handle := anObject
]

{ #category : #translating }
UFFIOpenGLIntegerHandle >> primitiveGenerate: outputHandle [
	self subclassResponsibility
]

{ #category : #initialization }
UFFIOpenGLIntegerHandle >> registerFinalization [
	FFIExternalResourceManager addResource: self data: {context . handle}.
]
