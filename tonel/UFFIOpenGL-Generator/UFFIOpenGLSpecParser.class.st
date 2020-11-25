"
I generate an UFFIOpenGLSpec object from an XML specification file from Khronos.

Specification files can be found at: https://github.com/KhronosGroup/OpenGL-Registry/tree/master/xml

Currently, only types, enums and commands are parsed.

Usage:
UFFIOpenGLSpecParser new parseSpecFromFileNamed: 'gl.xml' prefix: 'gl'
UFFIOpenGLSpecParser new parseSpecFromURL: 'https://raw.githubusercontent.com/KhronosGroup/OpenGL-Registry/master/xml/wgl.xml'  prefix: 'wgl'

"
Class {
	#name : #UFFIOpenGLSpecParser,
	#superclass : #Object,
	#instVars : [
		'spec',
		'prefix'
	],
	#category : #'UFFIOpenGL-Generator'
}

{ #category : #parsing }
UFFIOpenGLSpecParser class >> generateBindings: specBasePath [
	"
	self generateBindings: 'xml_spec/'
	"
	(self parseSpecFromFileNamed: specBasePath , 'gl.xml' prefix: 'gl')
		generateBindingsAt: UFFIOpenGL constantsAt: UFFIOpenGLConstants.
	(self parseSpecFromFileNamed: specBasePath , 'glx.xml' prefix: 'glX')
		generateBindingsAt: UFFIOpenGLX constantsAt: UFFIOpenGLXConstants.
	(self parseSpecFromFileNamed: specBasePath , 'wgl.xml' prefix: 'wgl')
		generateBindingsAt: UFFIOpenWGL constantsAt: UFFIOpenWGLConstants.
	(self parseSpecFromFileNamed: specBasePath , 'egl.xml' prefix: 'egl')
		generateBindingsAt: UFFIOpenEGL constantsAt: UFFIOpenEGLConstants.
	
]

{ #category : #parsing }
UFFIOpenGLSpecParser class >> parseSpecFromFileNamed: aFileName prefix: anApiPrefix [
	^ self new parseSpecFromFileNamed: aFileName prefix: anApiPrefix
]

{ #category : #parsing }
UFFIOpenGLSpecParser >> parseCommand: commandElement [
	| protoElement command returnType name paramType paramName param paramTypeAndName returnTypeAndName |
	protoElement := commandElement elementAt: 'proto'.
	returnTypeAndName := self parseTypeNamePair: protoElement.
	returnType := returnTypeAndName first.
	name := returnTypeAndName second.
	
	command := UFFIOpenGLSpecCommand new.
	command returnType: returnType;
		name: name;
		prefix: prefix.
	spec addCommand: command.

	commandElement elementsAt: 'param' do: [ :paramElement | 
		paramTypeAndName := self parseTypeNamePair: paramElement.
		paramType := paramTypeAndName first.
		paramName := paramTypeAndName second.
		param := UFFIOpenGLSpecCommandParam new name: paramName; type: paramType; yourself.
		command addParameter: param.
	].

]

{ #category : #parsing }
UFFIOpenGLSpecParser >> parseCommands: commandsElement [
	commandsElement elementsDo: [:commandElement | self parseCommand: commandElement ]
]

{ #category : #parsing }
UFFIOpenGLSpecParser >> parseEnum: constantElement into: enum [
	| alias group constantName constantValue constant |
	constantName := constantElement attributeAt: 'name'.
	constantValue := constantElement attributeAt: 'value'.
	(constantName isEmpty or: [ constantValue isEmpty ])
		ifTrue: [ ^ self ].

	group := (constantElement attributeAt: 'group').

	alias := constantElement attributeAt: 'alias'.
	(alias isEmpty) ifTrue: [ alias := nil ].
		
	constant := UFFIOpenGLSpecConstant new
		name: constantName;
		value: constantValue;
		group: group;
		alias: alias;
		yourself.
	enum addConstant: constant
]

{ #category : #parsing }
UFFIOpenGLSpecParser >> parseEnums: enumsElement [
	| namespace group type enum vendor |
	namespace := enumsElement attributeAt: 'namespace'.
	group := enumsElement attributeAt: 'group'.
	type := enumsElement attributeAt: 'bitmask'.
	vendor := enumsElement attributeAt: 'vendor'.
	enum := UFFIOpenGLSpecEnum new
		namespace: namespace;
		group: group;
		type: type;
		vendor: vendor;
		yourself.
	spec addEnum: enum.
	
	enumsElement elementsDo: [ :constantElement |
		self parseEnum: constantElement into: enum.
	].

]

{ #category : #parsing }
UFFIOpenGLSpecParser >> parseExtensions: extensionsElement [
]

{ #category : #parsing }
UFFIOpenGLSpecParser >> parseFeature: featuresElement [
]

{ #category : #parsing }
UFFIOpenGLSpecParser >> parseSpecFromDomParser: aDomParser prefix: anApiPrefix [
	| rootNode childType |
	spec := UFFIOpenGLSpec new.
	rootNode := aDomParser root.
	prefix := anApiPrefix.
	self assert: rootNode name = 'registry'.
	rootNode elementsDo: [ :child |
		childType := child name.
		childType = 'types' ifTrue: [ self parseTypes: child ].
		childType = 'enums' ifTrue: [ self parseEnums: child ].
		childType = 'commands' ifTrue: [ self parseCommands: child ].
		childType = 'feature' ifTrue: [ self parseFeature: child ].
		childType = 'extensions' ifTrue: [ self parseExtensions: child ].
	].

	^ spec
]

{ #category : #parsing }
UFFIOpenGLSpecParser >> parseSpecFromFileNamed: aFileName prefix: anApiPrefix [
	| xmlSpec |
	xmlSpec := XMLDOMParser parseFileNamed: aFileName.
	^ self parseSpecFromDomParser: xmlSpec prefix: anApiPrefix

]

{ #category : #parsing }
UFFIOpenGLSpecParser >> parseSpecFromURL: anURL prefix: anApiPrefix [
	| xmlSpec |
	xmlSpec := XMLDOMParser parseURL: anURL.
	^ self parseSpecFromDomParser: xmlSpec prefix: anApiPrefix

]

{ #category : #parsing }
UFFIOpenGLSpecParser >> parseTypeNamePair: element [
	| type name |
	type := ''.
	name := ''.
	element nodesDo: [ :node |
		node isStringNode ifTrue: [ type := type, node string ].
		node isElement ifTrue: [
			node name = 'ptype' ifTrue: [ type := type , node strings first ].
			node name = 'name' ifTrue: [ name := node strings first ].
		]
	].
	^ { type . name }
]

{ #category : #parsing }
UFFIOpenGLSpecParser >> parseTypes: typesElement [
	| type nameElement name api requires group text |
	
	typesElement elementsDo: [ :typeElement |
		nameElement := typeElement findElementNamed: 'name'.
		nameElement ifNil: [ name := typeElement attributeAt: 'name' ]
			       ifNotNil: [ name := nameElement contentString ].

		api := typeElement attributeAt: 'api'.
		requires := typeElement attributeAt: 'requires'.
		group := typeElement attributeAt: 'type'.
		text := typeElement contentString.
		
		type := UFFIOpenGLSpecType new
			name: name;				
			api: api;
			requires: requires;
			group: group;
			text: text;
			yourself.
		spec addType: type
	].

]
