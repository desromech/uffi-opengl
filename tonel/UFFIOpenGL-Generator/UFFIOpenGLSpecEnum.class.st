Class {
	#name : #UFFIOpenGLSpecEnum,
	#superclass : #Object,
	#instVars : [
		'namespace',
		'group',
		'type',
		'vendor',
		'constants'
	],
	#category : #'UFFIOpenGL-Generator'
}

{ #category : #adding }
UFFIOpenGLSpecEnum >> addConstant: aSpecConstant [
	constants add: aSpecConstant

]

{ #category : #accessing }
UFFIOpenGLSpecEnum >> constants [
	^ constants
]

{ #category : #accessing }
UFFIOpenGLSpecEnum >> group [
	^ group
]

{ #category : #accessing }
UFFIOpenGLSpecEnum >> group: anObject [
	group := anObject
]

{ #category : #initialization }
UFFIOpenGLSpecEnum >> initialize [
	constants := OrderedCollection new.
]

{ #category : #accessing }
UFFIOpenGLSpecEnum >> namespace [
	^ namespace
]

{ #category : #accessing }
UFFIOpenGLSpecEnum >> namespace: anObject [
	namespace := anObject
]

{ #category : #printing }
UFFIOpenGLSpecEnum >> printConstantData: aStream [
	constants do: [ :constant | constant printConstantData: aStream ]
]

{ #category : #accessing }
UFFIOpenGLSpecEnum >> type [
	^ type
]

{ #category : #accessing }
UFFIOpenGLSpecEnum >> type: anObject [
	type := anObject
]

{ #category : #accessing }
UFFIOpenGLSpecEnum >> vendor [
	^ vendor
]

{ #category : #accessing }
UFFIOpenGLSpecEnum >> vendor: anObject [
	vendor := anObject
]
