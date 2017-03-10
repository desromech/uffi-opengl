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

{ #category : #'context activation' }
UFFIOpenGLContext >> asCurrentDo: aBlock [
	^ renderer asCurrentDo: aBlock
]

{ #category : #'context activation' }
UFFIOpenGLContext >> asCurrentDo: aBlock ifFailure: aFailureBlock [
	^ renderer asCurrentDo: aBlock ifFailure: aFailureBlock
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
	(Smalltalk platformName beginsWith: 'Mac') ifTrue: [
		window show; hide
	]
]

{ #category : #'context activation' }
UFFIOpenGLContext >> makeCurrent [
	^ renderer makeCurrent
]

{ #category : #'context activation' }
UFFIOpenGLContext >> makeCurrent: aWindow [
	^ renderer makeCurrent: aWindow
]

{ #category : #accessing }
UFFIOpenGLContext >> renderer [
	^ renderer
]

{ #category : #'context activation' }
UFFIOpenGLContext >> swapBuffers [
	^ renderer swapBuffers
]

{ #category : #'context activation' }
UFFIOpenGLContext >> swapBuffers: aWindow [
	^ renderer swapBuffers: aWindow
]

{ #category : #accessing }
UFFIOpenGLContext >> window [
	^ window
]

{ #category : #'context activation' }
UFFIOpenGLContext >> withWindow: aWindow do: aBlock [
	^ renderer withWindow: aWindow do: aBlock
]

{ #category : #'context activation' }
UFFIOpenGLContext >> withWindow: aWindow do: aBlock ifFailure: aFailureBlock [
	^ renderer withWindow: aWindow do: aBlock ifFailure: aFailureBlock
]
