Class {
	#name : #ConfigurationOfUFFIOpenGL,
	#superclass : #Object,
	#instVars : [
		'project'
	],
	#classVars : [
		'LastVersionLoad'
	],
	#category : #ConfigurationOfUFFIOpenGL
}

{ #category : #'development support' }
ConfigurationOfUFFIOpenGL class >> DevelopmentSupport [

"See the methods in the 'development support' category on the class-side of MetacelloBaseConfiguration. Decide what development support methods you would like to use and copy them the the class-side of your configuration."
	<apiDocumentation>
]

{ #category : #private }
ConfigurationOfUFFIOpenGL class >> baseConfigurationClassIfAbsent: aBlock [

	^Smalltalk
		at: #'ConfigurationOf'
		ifAbsent: [ 
			self ensureMetacelloBaseConfiguration.
			Smalltalk at: #'ConfigurationOf' ifAbsent: aBlock ].
]

{ #category : #private }
ConfigurationOfUFFIOpenGL class >> ensureMetacello [

	(self baseConfigurationClassIfAbsent: []) ensureMetacello
]

{ #category : #private }
ConfigurationOfUFFIOpenGL class >> ensureMetacelloBaseConfiguration [
  Smalltalk
    at: #'ConfigurationOf'
    ifAbsent: [ 
      | repository version |
      repository := MCHttpRepository
        location: 'http://smalltalkhub.com/mc/dkh/metacello/main'
        user: ''
        password: ''.
      repository
        versionReaderForFileNamed: 'Metacello-Base-dkh.107'
        do: [ :reader | 
          version := reader version.
          version load.
          version workingCopy repositoryGroup addRepository: repository ] ]
]

{ #category : #'metacello tool support' }
ConfigurationOfUFFIOpenGL class >> isMetacelloConfig [
	"Answer true and the Metacello tools will operate on you"
	
	^true
]

{ #category : #loading }
ConfigurationOfUFFIOpenGL class >> load [
	"Load the #stable version defined for this platform. The #stable version is the version that is recommended to be used on this platform."

	"self load"

	<apiDocumentation>
	^(self project version: #stable) load
]

{ #category : #loading }
ConfigurationOfUFFIOpenGL class >> loadBleedingEdge [
	"Load the latest versions of the mcz files defined for this project. It is not likely that the #bleedingEdge has been tested."

	"self loadBleedingEdge"

	<apiDocumentation>
	^(self project version: #bleedingEdge) load
]

{ #category : #loading }
ConfigurationOfUFFIOpenGL class >> loadDevelopment [
	"Load the #development version defined for this platform. The #development version will change over time and is not expected to be stable."

	"self loadDevelopment"

	<apiDocumentation>
	^(self project version: #development) load
]

{ #category : #accessing }
ConfigurationOfUFFIOpenGL class >> project [

	^self new project
]

{ #category : #'development support' }
ConfigurationOfUFFIOpenGL class >> validate [
	"Check the configuration for Errors, Critical Warnings, and Warnings (see class comment for MetacelloMCVersionValidator for more information). 
	Errors identify specification issues that will result in unexpected behaviour when you load the configuration. 
	Critical Warnings identify specification issues that may result in unexpected behavior when you load the configuration.
	Warnings identify specification issues that are technically correct, but are worth take a look at."

	"self validate"

	<apiDocumentation>
	self ensureMetacello.
	^ ((Smalltalk at: #MetacelloToolBox) validateConfiguration: self debug: #() recurse: false) explore
]

{ #category : #baselines }
ConfigurationOfUFFIOpenGL >> baseline01: spec [
	<version: '0.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/ronsaldo/UFFIOpenGL/main/'.
		spec 
			package: #'UFFIOpenGL-Core';
			package: #'UFFIOpenGL-EGL' with: [
				spec requires: #(#'UFFIOpenGL-Core' ). ];
			package: #'UFFIOpenGL-Windows' with: [
				spec requires: #(#'UFFIOpenGL-Core' ). ];
			package: #'UFFIOpenGL-X11' with: [
				spec requires: #(#'UFFIOpenGL-Core' ). ];
			package: #'UFFIOpenGL-Generator' with: [
				spec requires: #(#'UFFIOpenGL-Core' #'UFFIOpenGL-EGL' #'UFFIOpenGL-Windows' #'UFFIOpenGL-X11' ). ]. ].

]

{ #category : #baselines }
ConfigurationOfUFFIOpenGL >> baseline02: spec [
	<version: '0.2-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/ronsaldo/UFFIOpenGL/main/'.
		spec project: 'OSWindows' with: [
				spec
					className: #ConfigurationOfOSWindows;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/OS/OS-Windows/main/' ].
		spec 
			package: #'UFFIOpenGL-Core';
			package: #'UFFIOpenGL-EGL' with: [
				spec requires: #(#'UFFIOpenGL-Core' ). ];
			package: #'UFFIOpenGL-Windows' with: [
				spec requires: #(#'UFFIOpenGL-Core' 'OSWindows' ). ];
			package: #'UFFIOpenGL-X11' with: [
				spec requires: #(#'UFFIOpenGL-Core' ). ];
			package: #'UFFIOpenGL-Generator' with: [
				spec requires: #(#'UFFIOpenGL-Core' #'UFFIOpenGL-EGL' #'UFFIOpenGL-Windows' #'UFFIOpenGL-X11' ). ].
		spec group: 'default' with: #(#'UFFIOpenGL-Core' ). ].

]

{ #category : #baselines }
ConfigurationOfUFFIOpenGL >> baseline03: spec [
	<version: '0.3-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/ronsaldo/UFFIOpenGL/main/'.
		spec project: 'OSWindows' with: [
				spec
					className: #ConfigurationOfOSWindows;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/OS/OS-Windows/main/' ].
		spec 
			package: #'UFFIOpenGL-Core';
			package: #'UFFIOpenGL-Context' with: [
				spec requires: #(#'UFFIOpenGL-Core' ). ];
			package: #'UFFIOpenGL-EGL' with: [
				spec requires: #(#'UFFIOpenGL-Core' ). ];
			package: #'UFFIOpenGL-Windows' with: [
				spec requires: #(#'UFFIOpenGL-Core' 'OSWindows' ). ];
			package: #'UFFIOpenGL-X11' with: [
				spec requires: #(#'UFFIOpenGL-Core' ). ];
			package: #'UFFIOpenGL-Generator' with: [
				spec requires: #(#'UFFIOpenGL-Core' #'UFFIOpenGL-EGL' #'UFFIOpenGL-Windows' #'UFFIOpenGL-X11' ). ].
		spec group: 'default' with: #(#'UFFIOpenGL-Core' #'UFFIOpenGL-Context'). ].

]

{ #category : #accessing }
ConfigurationOfUFFIOpenGL >> customProjectAttributes [
    "Edit to return a collection of any custom attributes e.g. for conditional loading: Array with: #'Condition1' with: #'Condition2.
	For more information see: http://code.google.com/p/metacello/wiki/CustomProjectAttrributes "

    ^ #()
]

{ #category : #'symbolic versions' }
ConfigurationOfUFFIOpenGL >> development: spec [
	<symbolicVersion: #'development'>

	spec for: #'common' version: '0.3-baseline'.

]

{ #category : #accessing }
ConfigurationOfUFFIOpenGL >> project [
    ^ project
        ifNil: [ 
            "Bootstrap Metacello if it is not already loaded"
            self class ensureMetacello.
            project := MetacelloMCProject new projectAttributes: self customProjectAttributes.	"Create the Metacello project"
            (Smalltalk at: #'MetacelloVersionConstructor') on: self project: project.	"Construct the project"
            project loadType: #'linear'.	"change to #atomic if desired"
            project ]
]

{ #category : #'symbolic versions' }
ConfigurationOfUFFIOpenGL >> stable: spec [
	<symbolicVersion: #'stable'>

	spec for: #'common' version: '1.5'.

]

{ #category : #versions }
ConfigurationOfUFFIOpenGL >> version10: spec [
	<version: '1.0' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.0'.
		spec author: 'RonieSalgado'.
		spec timestamp: '4/22/2016 09:26'.
		spec 
			package: #'UFFIOpenGL-Core' with: 'UFFIOpenGL-Core-RonieSalgado.3';
			package: #'UFFIOpenGL-EGL' with: 'UFFIOpenGL-EGL-RonieSalgado.3';
			package: #'UFFIOpenGL-Windows' with: 'UFFIOpenGL-Windows-RonieSalgado.3';
			package: #'UFFIOpenGL-X11' with: 'UFFIOpenGL-X11-RonieSalgado.3';
			package: #'UFFIOpenGL-Generator' with: 'UFFIOpenGL-Generator-RonieSalgado.3'. ].

]

{ #category : #versions }
ConfigurationOfUFFIOpenGL >> version11: spec [
	<version: '1.1' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.1'.
		spec author: 'RonieSalgado'.
		spec timestamp: '4/25/2016 11:10'.
		spec 
			package: #'UFFIOpenGL-Core' with: 'UFFIOpenGL-Core-RonieSalgado.4';
			package: #'UFFIOpenGL-EGL' with: 'UFFIOpenGL-EGL-RonieSalgado.4';
			package: #'UFFIOpenGL-Windows' with: 'UFFIOpenGL-Windows-RonieSalgado.4';
			package: #'UFFIOpenGL-X11' with: 'UFFIOpenGL-X11-RonieSalgado.4';
			package: #'UFFIOpenGL-Generator' with: 'UFFIOpenGL-Generator-RonieSalgado.4'. ].

]

{ #category : #versions }
ConfigurationOfUFFIOpenGL >> version12: spec [
	<version: '1.2' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.2'.
		spec author: 'RonieSalgado'.
		spec timestamp: '4/25/2016 11:16'.
		spec project: 'OSWindows' with: '2.1'.
		spec 
			package: #'UFFIOpenGL-Core' with: 'UFFIOpenGL-Core-RonieSalgado.4';
			package: #'UFFIOpenGL-EGL' with: 'UFFIOpenGL-EGL-RonieSalgado.4';
			package: #'UFFIOpenGL-Windows' with: 'UFFIOpenGL-Windows-RonieSalgado.4';
			package: #'UFFIOpenGL-X11' with: 'UFFIOpenGL-X11-RonieSalgado.4';
			package: #'UFFIOpenGL-Generator' with: 'UFFIOpenGL-Generator-RonieSalgado.4'. ].

]

{ #category : #versions }
ConfigurationOfUFFIOpenGL >> version13: spec [
	<version: '1.3' imports: #('0.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.2'.
		spec author: 'RonieSalgado'.
		spec timestamp: '4/25/2016 11:16'.
		spec project: 'OSWindows' with: '2.1'.
		spec 
			package: #'UFFIOpenGL-Core' with: 'UFFIOpenGL-Core-RonieSalgado.4';
			package: #'UFFIOpenGL-Context' with: 'UFFIOpenGL-Context-RonieSalgado.1';
			package: #'UFFIOpenGL-EGL' with: 'UFFIOpenGL-EGL-RonieSalgado.4';
			package: #'UFFIOpenGL-Windows' with: 'UFFIOpenGL-Windows-RonieSalgado.4';
			package: #'UFFIOpenGL-X11' with: 'UFFIOpenGL-X11-RonieSalgado.4';
			package: #'UFFIOpenGL-Generator' with: 'UFFIOpenGL-Generator-RonieSalgado.4'. ].

]

{ #category : #versions }
ConfigurationOfUFFIOpenGL >> version14: spec [
	<version: '1.4' imports: #('0.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.4'.
		spec author: 'RonieSalgado'.
		spec timestamp: '6/2/2016 19:09'.
		spec project: 'OSWindows' with: '2.1'.
		spec 
			package: #'UFFIOpenGL-Core' with: 'UFFIOpenGL-Core-RonieSalgado.4';
			package: #'UFFIOpenGL-Context' with: 'UFFIOpenGL-Context-RonieSalgado.2';
			package: #'UFFIOpenGL-EGL' with: 'UFFIOpenGL-EGL-RonieSalgado.4';
			package: #'UFFIOpenGL-Windows' with: 'UFFIOpenGL-Windows-RonieSalgado.4';
			package: #'UFFIOpenGL-X11' with: 'UFFIOpenGL-X11-RonieSalgado.4';
			package: #'UFFIOpenGL-Generator' with: 'UFFIOpenGL-Generator-RonieSalgado.4'. ].

]

{ #category : #versions }
ConfigurationOfUFFIOpenGL >> version15: spec [
	<version: '1.5' imports: #('0.3-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.5'.
		spec author: 'RonieSalgado'.
		spec timestamp: '5/12/2017 11:45'.
		spec project: 'OSWindows' with: '2.2'.
		spec 
			package: #'UFFIOpenGL-Core' with: 'UFFIOpenGL-Core-RonieSalgado.4';
			package: #'UFFIOpenGL-Context' with: 'UFFIOpenGL-Context-RonieSalgado.11';
			package: #'UFFIOpenGL-EGL' with: 'UFFIOpenGL-EGL-RonieSalgado.4';
			package: #'UFFIOpenGL-Windows' with: 'UFFIOpenGL-Windows-RonieSalgado.4';
			package: #'UFFIOpenGL-X11' with: 'UFFIOpenGL-X11-RonieSalgado.4';
			package: #'UFFIOpenGL-Generator' with: 'UFFIOpenGL-Generator-RonieSalgado.4'. ].

]
