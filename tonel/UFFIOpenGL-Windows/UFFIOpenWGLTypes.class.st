Class {
	#name : #UFFIOpenWGLTypes,
	#superclass : #SharedPool,
	#classVars : [
		'HGLRC',
		'HPBUFFERARB',
		'HPBUFFEREXT',
		'HPGPUNV',
		'HPVIDEODEV',
		'HVIDEOINPUTDEVICENV',
		'HVIDEOOUTPUTDEVICENV',
		'PGPU_DEVICE'
	],
	#category : #'UFFIOpenGL-Windows'
}

{ #category : #'as yet unclassified' }
UFFIOpenWGLTypes class >> initialize [
	"
	super initialize
	"
	
	" GLAPIData wgl typemap values asSet "
	HGLRC := #WinHandle.
	HVIDEOOUTPUTDEVICENV := #void.
	HVIDEOINPUTDEVICENV := #void.
	HPGPUNV := #void.
	HPVIDEODEV := #void.
	HPBUFFERARB := #void.
	HPBUFFEREXT := #void.
	
	PGPU_DEVICE := #void.


]
