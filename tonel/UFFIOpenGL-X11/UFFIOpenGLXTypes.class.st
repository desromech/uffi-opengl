Class {
	#name : #UFFIOpenGLXTypes,
	#superclass : #SharedPool,
	#classVars : [
		'GLXContext',
		'GLXDrawable'
	],
	#category : #'UFFIOpenGL-X11'
}

{ #category : #'class initialization' }
UFFIOpenGLXTypes class >> initialize [
	"
	self initialize
	"
	GLXContext := #'int*'.
	GLXDrawable := #ulong.
]
