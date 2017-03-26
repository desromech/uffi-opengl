"
I am used to encapsulate an integer OpenGL handle.
"
Class {
	#name : #UFFIOpenGLHandle,
	#superclass : #Object,
	#instVars : [
		'context',
		'handle'
	],
	#pools : [
		'UFFIOpenGLConstants'
	],
	#category : #'UFFIOpenGL-Context-Object'
}

{ #category : #finalization }
UFFIOpenGLHandle class >> finalizeResourceData: contextAndHandle [
	| context handle |
	context := contextAndHandle first.
	handle := contextAndHandle second.
	context hasValidSession ifFalse: [ ^ self ].
	context asCurrentDo: [ 
		self primitiveFinalizeOpenGL: context gl resource: handle
	]
]

{ #category : #'instance creation' }
UFFIOpenGLHandle class >> for: context [
	^ self new context: context;
		yourself
]

{ #category : #'instance creation' }
UFFIOpenGLHandle class >> for: context handle: value [
	^ self new context: context;
		handle: value;
		yourself
]

{ #category : #finalization }
UFFIOpenGLHandle class >> primitiveFinalizeOpenGL: gl resource: handleBuffer [
	self subclassResponsibility
]

{ #category : #accessing }
UFFIOpenGLHandle >> context [
	^ context
]

{ #category : #accessing }
UFFIOpenGLHandle >> context: anObject [
	context := anObject
]

{ #category : #accessing }
UFFIOpenGLHandle >> handle [
	^ handle
]

{ #category : #accessing }
UFFIOpenGLHandle >> handle: anObject [
	handle := anObject
]

{ #category : #accessing }
UFFIOpenGLHandle >> hasValidHandle [
	^ handle ~= 0
]

{ #category : #initialization }
UFFIOpenGLHandle >> registerFinalization [
	FFIExternalResourceManager addResource: self data: {context . handle}.
]

{ #category : #accessing }
UFFIOpenGLHandle >> validHandle [
	self assert: self hasValidHandle.
	^ handle
]
