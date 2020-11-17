Class {
	#name : #UFFIOpenGLESOffscreenSamples,
	#superclass : #UFFIOpenGLOffscreenSamples,
	#pools : [
		'UFFIOpenGLConstants'
	],
	#category : #'UFFIOpenGL-Context-Samples'
}

{ #category : #samples }
UFFIOpenGLESOffscreenSamples class >> blueBackground [
	<example>
	super blueBackground
]

{ #category : #shaders }
UFFIOpenGLESOffscreenSamples class >> colorFragmentShader [
	^ '
#version 100

varying highp vec4 fColor;

void main()
{ 
	gl_FragData[0] = fColor;
}

'
]

{ #category : #shaders }
UFFIOpenGLESOffscreenSamples class >> colorVertexShader [
	^ '
#version 100
attribute highp vec3 vPosition;
attribute highp vec4 vColor;

varying highp vec4 fColor;

void main()
{ 
	fColor = vColor;
	gl_Position = vec4(vPosition, 1.0);
}

'
]

{ #category : #samples }
UFFIOpenGLESOffscreenSamples class >> makeContext [
	^ UFFIOpenGLESContext new
]

{ #category : #samples }
UFFIOpenGLESOffscreenSamples class >> quad [
	<example>
	super quad
]

{ #category : #samples }
UFFIOpenGLESOffscreenSamples class >> triangle [
	<example>
	super triangle
]

{ #category : #'see class side' }
UFFIOpenGLESOffscreenSamples >> seeClassSide [
]
