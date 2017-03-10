Class {
	#name : #UFFIOpenGLContext,
	#superclass : #Object,
	#instVars : [
		'window',
		'renderer',
		'session',
		'gl'
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
	self checkSession.
	^ renderer asCurrentDo: aBlock
]

{ #category : #'context activation' }
UFFIOpenGLContext >> asCurrentDo: aBlock ifFailure: aFailureBlock [
	self checkSession.
	^ renderer asCurrentDo: aBlock ifFailure: aFailureBlock
]

{ #category : #initialization }
UFFIOpenGLContext >> checkSession [
	| glAttributes attributes |
	session == Smalltalk session ifTrue: [ ^ self ].
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
	].

	session := Smalltalk session.
]

{ #category : #accessing }
UFFIOpenGLContext >> gl [
	gl ifNil: [ gl := UFFIOpenGL new ].
	^ gl
]

{ #category : #initialization }
UFFIOpenGLContext >> hasValidSession [
	^ session == Smalltalk session
]

{ #category : #initialization }
UFFIOpenGLContext >> initialize [
	self checkSession.

]

{ #category : #'context activation' }
UFFIOpenGLContext >> makeCurrent [
	^ renderer makeCurrent
]

{ #category : #'context activation' }
UFFIOpenGLContext >> makeCurrent: aWindow [
	^ renderer makeCurrent: aWindow
]

{ #category : #'resource creation' }
UFFIOpenGLContext >> offscreenBufferExtent: anExtent [
	^ UFFIOpenGLOffscreenBuffer new
		extent: anExtent;
		context: self
		yourself
]

{ #category : #accessing }
UFFIOpenGLContext >> renderer [
	^ renderer
]

{ #category : #'context activation' }
UFFIOpenGLContext >> swapBuffers [
	self checkSession.
	^ renderer swapBuffers
]

{ #category : #'context activation' }
UFFIOpenGLContext >> swapBuffers: aWindow [
	self checkSession.
	^ renderer swapBuffers: aWindow
]

{ #category : #accessing }
UFFIOpenGLContext >> window [
	^ window
]

{ #category : #'context activation' }
UFFIOpenGLContext >> withWindow: aWindow do: aBlock [
	self checkSession.
	^ renderer withWindow: aWindow do: aBlock
]

{ #category : #'context activation' }
UFFIOpenGLContext >> withWindow: aWindow do: aBlock ifFailure: aFailureBlock [
	self checkSession.
	^ renderer withWindow: aWindow do: aBlock ifFailure: aFailureBlock
]
