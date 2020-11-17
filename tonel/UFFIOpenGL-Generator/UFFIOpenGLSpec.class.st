Class {
	#name : #UFFIOpenGLSpec,
	#superclass : #Object,
	#instVars : [
		'types',
		'enums',
		'commands',
		'features'
	],
	#category : #'UFFIOpenGL-Generator'
}

{ #category : #adding }
UFFIOpenGLSpec >> addCommand: aCommand [
	commands add: aCommand
	
]

{ #category : #adding }
UFFIOpenGLSpec >> addEnum: anEnum [
	enums add: anEnum
]

{ #category : #accessing }
UFFIOpenGLSpec >> commands [
	^ commands
]

{ #category : #printing }
UFFIOpenGLSpec >> constantDataMethod [
	^ ByteString streamContents: [ :out |
		out nextPutAll: 'constantData'; cr;
			tab; nextPutAll: '^ #(';cr.
			
		self printConstantData: out.
		out tab; nextPutAll: ')'.
	]
]

{ #category : #accessing }
UFFIOpenGLSpec >> enums [
	^ enums
]

{ #category : #accessing }
UFFIOpenGLSpec >> features [
	^ features
]

{ #category : #'binding generation' }
UFFIOpenGLSpec >> generateBindingsAt: bindingsClass constantsAt: constantsClass [
	commands do: [ :command |
		command isValid ifTrue: [
			bindingsClass compile: command bindingsCode classified: 'generated bindings'
		]
	].

	constantsClass class compile: self constantDataMethod classified: 'constant data'.
	
]

{ #category : #initialization }
UFFIOpenGLSpec >> initialize [
	super initialize.
	
	types := OrderedCollection new.
	enums := OrderedCollection new.
	commands := OrderedCollection new.
	features := OrderedCollection new.
	
]

{ #category : #printing }
UFFIOpenGLSpec >> printConstantData: aStream [
	enums do: [ :enum | enum printConstantData: aStream ].
]

{ #category : #accessing }
UFFIOpenGLSpec >> types [
	^ types
]
