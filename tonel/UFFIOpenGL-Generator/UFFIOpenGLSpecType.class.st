Class {
	#name : #UFFIOpenGLSpecType,
	#superclass : #Object,
	#instVars : [
		'name',
		'api',
		'requires',
		'group',
		'text'
	],
	#category : #'UFFIOpenGL-Generator'
}

{ #category : #accessing }
UFFIOpenGLSpecType >> api: aString [ 
	api := aString
]

{ #category : #accessing }
UFFIOpenGLSpecType >> group: aString [ 
	group := aString
]

{ #category : #accessing }
UFFIOpenGLSpecType >> name: aString [ 
	name := aString
]

{ #category : #accessing }
UFFIOpenGLSpecType >> requires: aString [ 
	requires := aString
]

{ #category : #accessing }
UFFIOpenGLSpecType >> text: aString [ 
	text := aString
]
