Class {
	#name : #UFFIOpenGLSpecConstant,
	#superclass : #Object,
	#instVars : [
		'name',
		'value'
	],
	#category : #'UFFIOpenGL-Generator'
}

{ #category : #accessing }
UFFIOpenGLSpecConstant >> name [
	^ name
]

{ #category : #accessing }
UFFIOpenGLSpecConstant >> name: anObject [
	name := anObject
]

{ #category : #parsing }
UFFIOpenGLSpecConstant >> parseCString: aCString [
	^ aCString copyFrom: 2 to: aCString size - 1
]

{ #category : #printing }
UFFIOpenGLSpecConstant >> printConstantData: aStream [
	aStream tab; tab; nextPutAll: name; tab; print: value; cr
]

{ #category : #accessing }
UFFIOpenGLSpecConstant >> value [
	^ value
]

{ #category : #accessing }
UFFIOpenGLSpecConstant >> value: aNumberString [
	(aNumberString beginsWith: '"') ifTrue: [
		value := self parseCString: aNumberString.
		^ self. 
	].

	(aNumberString beginsWith: '0x') ifTrue: [
			value := Integer readFrom: (aNumberString allButFirst: 2) base: 16
	] ifFalse: [
		((aNumberString beginsWith: '0') and: [ aNumberString size > 1 ]) ifTrue: [
			value := Integer readFrom: aNumberString allButFirst  base: 8
		] ifFalse: [
			value := aNumberString asInteger.
		]
	].

	self assert: value ~~ nil.
	
]
