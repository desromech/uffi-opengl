"
I have examples for using OpenGL with an offscreen buffer.
"
Class {
	#name : #UFFIOpenGLOffscreenSamples,
	#superclass : #Object,
	#pools : [
		'UFFIOpenGLConstants'
	],
	#category : #'UFFIOpenGL-Context-Samples'
}

{ #category : #samples }
UFFIOpenGLOffscreenSamples >> blueBackground [
	"
	self new blueBackground
	"
	| context gl fb |
	context := UFFIOpenGLContext new.
	gl := context gl.
	fb := context offscreenBufferExtent: 640@480.

	context asCurrentDo: [
		fb activate.
		gl
			clearColor_red: 0.0 green: 0.0 blue: 1.0 alpha: 1.0;
			clear: GL_COLOR_BUFFER_BIT
	].

	fb asForm asMorph openInWindow.
]
