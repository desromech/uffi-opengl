Class {
	#name : #UFFIOpenGLContext,
	#superclass : #Object,
	#instVars : [
		'window',
		'renderer'
	],
	#classVars : [
		'GlobalContext',
		'Session'
	],
	#category : #'UFFIOpenGL-Context'
}

{ #category : #accessing }
UFFIOpenGLContext class >> globalContext [
	(Session ~~ Smalltalk session or: [ GlobalContext isNil ]) ifTrue: [
		GlobalContext := self new.
		Session := Smalltalk session.
	].
	^ GlobalContext
]

{ #category : #initialization }
UFFIOpenGLContext >> initialize [
	| glAttributes attributes |
	glAttributes := OSWindowGLAttributes new.
	attributes := OSWindowAttributes new
		visible: false;
		extent: 1@1;
		glAttributes: glAttributes
		yourself.

	window := OSWindow createWithAttributes: attributes.
	renderer := window newOpenGLRenderer.
]

{ #category : #misc }
UFFIOpenGLContext >> makeCurrent [
	^ renderer makeCurrent
]

{ #category : #accessing }
UFFIOpenGLContext >> renderer [
	^ renderer
]

{ #category : #accessing }
UFFIOpenGLContext >> window [
	^ window
]
