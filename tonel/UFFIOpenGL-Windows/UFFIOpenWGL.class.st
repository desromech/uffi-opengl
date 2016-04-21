Class {
	#name : #UFFIOpenWGL,
	#superclass : #Object,
	#pools : [
		'UFFIOpenGLTypes',
		'UFFIOpenWGLTypes',
		'WinTypes'
	],
	#category : #'UFFIOpenGL-Windows'
}

{ #category : #'generated bindings' }
UFFIOpenWGL >> allocateMemoryNV_size: size readfreq: readfreq writefreq: writefreq priority: priority [
	^ self ffiCall: #( void* wglAllocateMemoryNV ( GLsizei size , GLfloat readfreq , GLfloat writefreq , GLfloat priority ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> cribePixelFormat_hdc: hdc ipfd: ipfd cjpfd: cjpfd ppfd: ppfd [
	^ self ffiCall: #( int DescribePixelFormat ( HDC hdc , int ipfd , UINT cjpfd , PIXELFORMATDESCRIPTOR ppfd ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> enumerateVideoDevicesNV_hDC: hDC phDeviceList: phDeviceList [
	^ self ffiCall: #( int wglEnumerateVideoDevicesNV ( HDC hDC , HVIDEOOUTPUTDEVICENV phDeviceList ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> freeMemoryNV_pointer: pointer [
	^ self ffiCall: #( void wglFreeMemoryNV ( void* pointer ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getExtensionsStringARB_hdc: hdc [
	^ self ffiCall: #( char* wglGetExtensionsStringARB ( HDC hdc ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getExtensionsStringEXT [
	^ self ffiCall: #( char* wglGetExtensionsStringEXT ( ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getLayerPaletteEntries_hdc: hdc iLayerPlane: iLayerPlane iStart: iStart cEntries: cEntries pcr: pcr [
	^ self ffiCall: #( int wglGetLayerPaletteEntries ( HDC hdc , int iLayerPlane , int iStart , int cEntries , COLORREF pcr ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getSwapIntervalEXT [
	^ self ffiCall: #( int wglGetSwapIntervalEXT ( ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> osePixelFormat_hDc: hDc pPfd: pPfd [
	^ self ffiCall: #( int ChoosePixelFormat ( HDC hDc , PIXELFORMATDESCRIPTOR pPfd ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> pixelFormat_hdc: hdc [
	^ self ffiCall: #( int GetPixelFormat ( HDC hdc ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> releasePbufferDCARB_hPbuffer: hPbuffer hDC: hDC [
	^ self ffiCall: #( int wglReleasePbufferDCARB ( HPBUFFERARB hPbuffer , HDC hDC ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> releasePbufferDCEXT_hPbuffer: hPbuffer hDC: hDC [
	^ self ffiCall: #( int wglReleasePbufferDCEXT ( HPBUFFEREXT hPbuffer , HDC hDC ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> setLayerPaletteEntries_hdc: hdc iLayerPlane: iLayerPlane iStart: iStart cEntries: cEntries pcr: pcr [
	^ self ffiCall: #( int wglSetLayerPaletteEntries ( HDC hdc , int iLayerPlane , int iStart , int cEntries , COLORREF pcr ) ) options: #(+optIndirectCall)
]
