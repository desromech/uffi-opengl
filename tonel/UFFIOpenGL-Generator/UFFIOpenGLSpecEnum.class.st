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
	#classVars : [
		'Vendors'
	],
	#category : #'UFFIOpenGL-Generator'
}

{ #category : #initialization }
UFFIOpenGLSpecEnum class >> initialize [
"Initialize vendor suffixes in a set for classifying enums"
Vendors := self vendorSuffixes asSet.
]

{ #category : #testing }
UFFIOpenGLSpecEnum class >> vendorSuffixFrom: aSymbol [
"Return the vendor suffix or an empty string for a core GL enum"
| enum lastUnderscore suffix |
enum := aSymbol asString.
lastUnderscore := enum lastIndexOf: $_ ifAbsent: [ ^ '' ].
suffix := enum copyFrom: (lastUnderscore + 1) to: enum size.
(Vendors includes: suffix) ifTrue: [ ^ suffix ].
^ ''

]

{ #category : #initialization }
UFFIOpenGLSpecEnum class >> vendorSuffixes [
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
UFFIOpenGLSpecEnum >> isBitmask [
	^ type = 'bitmask'
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
