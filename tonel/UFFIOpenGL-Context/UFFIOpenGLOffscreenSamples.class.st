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

{ #category : #buffers }
UFFIOpenGLOffscreenSamples class >> activateDefaultVertexLayoutOn: context [
	| vertexSize |
	vertexSize := ("position" 3 + "color" 4)*4.
	
	context gl
		enableVertexAttribArray: 0;
		vertexAttribPointer_index: 0 size: 3 type: GL_FLOAT normalized: GL_FALSE stride: vertexSize pointer: (ExternalAddress fromAddress: 0);
		enableVertexAttribArray: 1;
		vertexAttribPointer_index: 1 size: 4 type: GL_FLOAT normalized: GL_FALSE stride: vertexSize pointer: (ExternalAddress fromAddress: 12)
]

{ #category : #samples }
UFFIOpenGLOffscreenSamples class >> blueBackground [
	<example>
	| context gl fb |
	context := self makeContext.
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

{ #category : #shaders }
UFFIOpenGLOffscreenSamples class >> colorFragmentShader [
	^ '
#version 120

varying vec4 fColor;

void main()
{ 
	gl_FragData[0] = fColor;
}

'
]

{ #category : #shaders }
UFFIOpenGLOffscreenSamples class >> colorProgramFor: context [
	^ self programFor: context vertex: self colorVertexShader fragment: self colorFragmentShader
]

{ #category : #shaders }
UFFIOpenGLOffscreenSamples class >> colorVertexShader [
	^ '
#version 120
attribute vec3 vPosition;
attribute vec4 vColor;

varying vec4 fColor;

void main()
{ 
	fColor = vColor;
	gl_Position = vec4(vPosition, 1.0);
}

'
]

{ #category : #shaders }
UFFIOpenGLOffscreenSamples class >> context: context compileShader: shaderSource type: shaderType [
	| shader |
	shader := UFFIOpenGLShaderHandle for: context.
	shader type: shaderType;
		generate;
		source: shaderSource withUnixLineEndings;
		compile.
	shader compileStatus ifFalse: [ 
		self error: shader infoLog
	].
	^ shader
]

{ #category : #buffers }
UFFIOpenGLOffscreenSamples class >> immutableVertexBufferFor: context withPackedFloats: arrayOfVertices [
	| elementSize elementCount bufferSize data dataPosition buffer |
	elementSize := arrayOfVertices first size * 4.
	elementCount := arrayOfVertices size.
	bufferSize := elementSize * elementCount.
	data := ByteArray new: bufferSize.
	dataPosition := 1.
	arrayOfVertices do: [ :vertex |
		vertex do: [ :attribute |
			data floatAt: dataPosition put: attribute asFloat.
			dataPosition := dataPosition + 4
		]
	].

	buffer := (UFFIOpenGLBufferHandle for: context) generate.
	buffer forTarget: GL_ARRAY_BUFFER setData: data withUsage: GL_STATIC_DRAW.
	^ buffer
]

{ #category : #samples }
UFFIOpenGLOffscreenSamples class >> makeContext [
	^ UFFIOpenGLContext new
]

{ #category : #shaders }
UFFIOpenGLOffscreenSamples class >> programFor: context vertex: vertexSource fragment: fragmentSource [
	^ self programFor: context vertex: vertexSource fragment: fragmentSource vertexBindings: {
		#vPosition -> 0.
		#vColor -> 1.
	}
]

{ #category : #shaders }
UFFIOpenGLOffscreenSamples class >> programFor: context vertex: vertexSource fragment: fragmentSource vertexBindings: vertexBindings [
	| vertexShader fragmentShader program |
	context asCurrentDo: [
		vertexShader := self context: context compileShader: vertexSource type: GL_VERTEX_SHADER.
		fragmentShader := self context: context compileShader: fragmentSource type: GL_FRAGMENT_SHADER.
		
		program := (UFFIOpenGLProgramHandle for: context) generate.
		vertexBindings do: [ :binding |
			program bindAttribute: binding key asString location: binding value
		].

		program
			attach: vertexShader;
			attach: fragmentShader.
	
		program link.
		program linkStatus ifFalse: [ 
			self error: program infoLog
		].
		
		^ program
	].

]

{ #category : #samples }
UFFIOpenGLOffscreenSamples class >> quad [
	<example>
	| context gl fb colorProgram vertexBuffer |
	context := self makeContext.
	colorProgram := self colorProgramFor: context.
	vertexBuffer := self immutableVertexBufferFor: context withPackedFloats: {
		"   x      y     z     r     g     b     a "
		{  0.0 . 0.0 . 0.0 . 1.0 . 0.0 . 0.0 . 1.0 }.
		{  0.5 . 0.0 . 0.0 . 1.0 . 0.0 . 0.0 . 1.0 }.
		{  0.0 . 0.5 . 0.0 . 1.0 . 0.0 . 0.0 . 1.0 }.
		{  0.5 . 0.5 . 0.0 . 1.0 . 0.0 . 0.0 . 1.0 }.
	}.
	
	gl := context gl.
	fb := context offscreenBufferExtent: 640@480.

	context asCurrentDo: [
		fb activate.
		gl
			viewport_x: 0 y: 0 width: 640 height: 480;
			
			clearColor_red: 0.0 green: 0.0 blue: 0.0 alpha: 1.0;
			clear: GL_COLOR_BUFFER_BIT;
			
			useProgram: colorProgram validHandle;
			
			bindBuffer_target: GL_ARRAY_BUFFER buffer: vertexBuffer validHandle.
		self activateDefaultVertexLayoutOn: context.
		
		gl drawArrays_mode: GL_TRIANGLE_STRIP first: 0 count: 4
	].

	fb asForm asMorph openInWindow.
]

{ #category : #samples }
UFFIOpenGLOffscreenSamples class >> triangle [
	<example>
	| context gl fb colorProgram vertexBuffer |
	context := self makeContext.
	colorProgram := self colorProgramFor: context.
	vertexBuffer := self immutableVertexBufferFor: context withPackedFloats: {
		"   x      y     z     r     g     b     a "
		{ -0.5 . 0.5 . 0.0 . 1.0 . 0.0 . 0.0 . 1.0 }.
		{  0.5 . 0.5 . 0.0 . 0.0 . 1.0 . 0.0 . 1.0 }.
		{  0.0 . -0.5 . 0.0 . 0.0 . 0.0 . 1.0 . 1.0 }.
	}.
	
	gl := context gl.
	fb := context offscreenBufferExtent: 640@480.

	context asCurrentDo: [
		fb activate.
		gl
			viewport_x: 0 y: 0 width: 640 height: 480;
			
			clearColor_red: 0.0 green: 0.0 blue: 0.0 alpha: 1.0;
			clear: GL_COLOR_BUFFER_BIT;
			
			useProgram: colorProgram validHandle;
			
			bindBuffer_target: GL_ARRAY_BUFFER buffer: vertexBuffer validHandle.
		self activateDefaultVertexLayoutOn: context.
		
		gl drawArrays_mode: GL_TRIANGLES first: 0 count: 3
	].

	fb asForm asMorph openInWindow.
]

{ #category : #'see class side' }
UFFIOpenGLOffscreenSamples >> seeClassSide [
]
