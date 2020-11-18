Class {
	#name : #UFFIOpenGLESContext,
	#superclass : #UFFIOpenGLContext,
	#category : #'UFFIOpenGL-Context'
}

{ #category : #settings }
UFFIOpenGLESContext class >> defaultGLAttributes [
	^ OSWindowGLAttributes new setForOpenGLES20; srgbFramebuffer: true.
]

{ #category : #version }
UFFIOpenGLESContext >> isAtLeastDesktopVersionMajor: versionMajor versionMinor: versionMinor [
	^ true
]

{ #category : #version }
UFFIOpenGLESContext >> isAtLeastEmbeddedVersionMajor: versionMajor versionMinor: versionMinor [
	^ (version first > versionMajor) or: [ version first = versionMajor and: [ version second >= versionMinor] ]
]

{ #category : #'version testing' }
UFFIOpenGLESContext >> isDesktopVersion [
	^ false
]

{ #category : #'version testing' }
UFFIOpenGLESContext >> isEmbeddedVersion [
	^ true
]
