Class {
	#name : #UFFIOpenGLSpecConstant,
	#superclass : #Object,
	#instVars : [
		'name',
		'value',
		'group',
		'alias'
	],
	#classVars : [
		'Vendors'
	],
	#category : #'UFFIOpenGL-Generator'
}

{ #category : #initialization }
UFFIOpenGLSpecConstant class >> initialize [
"Initialize vendor suffixes in a set for classifying enums"
Vendors := self vendorSuffixes asSet.
]

{ #category : #testing }
UFFIOpenGLSpecConstant class >> isVendor: aString [
"Return true if the string is one of the vendor suffixes"
^ Vendors includes: aString.

]

{ #category : #initialization }
UFFIOpenGLSpecConstant class >> vendorSuffixes [
^ #(
'3DFX'
'3DL'
'AMD'
'ANDROID'
'ANGLE'
'APPLE'
'ARB'
'ARM'
'ATI'
'DMP'
'EXT'
'FJ'
'GREMEDY'
'HP'
'I3D'
'IBM'
'IGLOO'
'IMG'
'INGR'
'INTEL'
'KHR'
'MESA'
'MESAX'
'NV'
'NVX'
'OES'
'OML'
'OVR'
'PGI'
'QCOM'
'REND'
'S3'
'SGI'
'SGIS'
'SGIX'
'SUN'
'SUNX'
'VIV'
'WIN' 
)
]

{ #category : #accessing }
UFFIOpenGLSpecConstant >> alias [
^ alias
]

{ #category : #accessing }
UFFIOpenGLSpecConstant >> alias: anAlias [
  alias := anAlias
]

{ #category : #accessing }
UFFIOpenGLSpecConstant >> group [
^ group
]

{ #category : #accessing }
UFFIOpenGLSpecConstant >> group: aGroup [
  group := aGroup
]

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

	self assert: value isNotNil.
	
]

{ #category : #printing }
UFFIOpenGLSpecConstant >> vendor [
"Return the vendor suffix or an empty string for a core GL enum"
| enum lastUnderscore suffix |
enum := name asString.
lastUnderscore := enum lastIndexOf: $_ ifAbsent: [ ^ '' ].
suffix := enum copyFrom: (lastUnderscore + 1) to: enum size.
(self class isVendor: suffix) ifTrue: [ ^ suffix ].
^ ''

]
