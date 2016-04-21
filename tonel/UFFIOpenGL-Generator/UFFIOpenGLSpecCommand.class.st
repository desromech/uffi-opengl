Class {
	#name : #UFFIOpenGLSpecCommand,
	#superclass : #Object,
	#instVars : [
		'returnType',
		'name',
		'parameters',
		'prefix'
	],
	#classVars : [
		'FunctionBlacklist'
	],
	#category : #'UFFIOpenGL-Generator'
}

{ #category : #'class initialization' }
UFFIOpenGLSpecCommand class >> initialize [
	"
	self initialize
	"
	super initialize.
	
	FunctionBlacklist := Set newFrom: #(
		eglStreamConsumerGLTextureExternalAttribsNV
		wglCopyImageSubDataNV
		glXCopyImageSubDataNV
	).
]

{ #category : #adding }
UFFIOpenGLSpecCommand >> addParameter: aParameter [
	parameters add: aParameter
]

{ #category : #'code generation' }
UFFIOpenGLSpecCommand >> bindingsCode [
	^ ByteString streamContents: [ :out |
		self
			emitBindingsSelector: out;
			emitBindingsCallout: out
	]
]

{ #category : #'code generation' }
UFFIOpenGLSpecCommand >> emitBindingsCallout: out [
	out tab; nextPutAll: '^ self ffiCall: #( ' .
	out nextPutAll: (self sanitizeBindingsType: returnType).
	out space; nextPutAll: name; space.
	out nextPut: $(; space.
	
	parameters doWithIndex: [ :parameter :index |
		index > 1 ifTrue: [ out nextPutAll: ', ' ].
		self emitBindingsParameter: parameter on: out
	].

	out nextPutAll: ') ) options: #(+optIndirectCall)'
	
]

{ #category : #'code generation' }
UFFIOpenGLSpecCommand >> emitBindingsParameter: parameter on: out [
	out nextPutAll: (self sanitizeBindingsType: parameter type);
		space; nextPutAll: parameter name; space
]

{ #category : #'code generation' }
UFFIOpenGLSpecCommand >> emitBindingsSelector: out [
	out nextPutAll: self nameWithoutPrefix.
	parameters doWithIndex: [:param :index |
		index = 1 ifTrue: [ out nextPut: $_ ] ifFalse: [ out space ].
		out nextPutAll: param name; nextPut: $:; space; nextPutAll: param name.
	].
	out cr.
]

{ #category : #initialization }
UFFIOpenGLSpecCommand >> initialize [
	parameters := OrderedCollection new.
]

{ #category : #testing }
UFFIOpenGLSpecCommand >> isValid [
	^ returnType isNotNil and: [ (FunctionBlacklist includes: name) not ]
]

{ #category : #accessing }
UFFIOpenGLSpecCommand >> name [
	^ name
]

{ #category : #accessing }
UFFIOpenGLSpecCommand >> name: anObject [
	name := anObject
]

{ #category : #accessing }
UFFIOpenGLSpecCommand >> nameWithoutPrefix [
	^ (name at: prefix size + 1) lowercase asString , (name allButFirst: prefix size + 1)
]

{ #category : #accessing }
UFFIOpenGLSpecCommand >> parameters [
	^ parameters
]

{ #category : #accessing }
UFFIOpenGLSpecCommand >> prefix [
	^ prefix
]

{ #category : #accessing }
UFFIOpenGLSpecCommand >> prefix: anObject [
	prefix := anObject
]

{ #category : #accessing }
UFFIOpenGLSpecCommand >> returnType [
	^ returnType
]

{ #category : #accessing }
UFFIOpenGLSpecCommand >> returnType: anObject [
	returnType := anObject
]

{ #category : #'code generation' }
UFFIOpenGLSpecCommand >> sanitizeBindingsType: aTypeString [
	^ (((aTypeString copyReplaceAll: 'const ' with: ' ') copyReplaceAll: ' *' with: '*' ) copyReplaceAll: '* ' with: '*') trim
]
