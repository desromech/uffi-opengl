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
	^ self ffiCall: #( void* wglAllocateMemoryNV ( GLsizei size , GLfloat readfreq , GLfloat writefreq , GLfloat priority ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> associateImageBufferEventsI3D_hDC: hDC pEvent: pEvent pAddress: pAddress pSize: pSize count: count [
	^ self ffiCall: #( BOOL wglAssociateImageBufferEventsI3D ( HDC hDC , HANDLE pEvent , LPVOID pAddress , DWORD pSize , UINT count ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> beginFrameTrackingI3D [
	^ self ffiCall: #( BOOL wglBeginFrameTrackingI3D ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> bindDisplayColorTableEXT: id [
	^ self ffiCall: #( GLboolean wglBindDisplayColorTableEXT ( GLushort id ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> bindSwapBarrierNV_group: group barrier: barrier [
	^ self ffiCall: #( BOOL wglBindSwapBarrierNV ( GLuint group , GLuint barrier ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> bindTexImageARB_hPbuffer: hPbuffer iBuffer: iBuffer [
	^ self ffiCall: #( BOOL wglBindTexImageARB ( HPBUFFERARB hPbuffer , int iBuffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> bindVideoCaptureDeviceNV_uVideoSlot: uVideoSlot hDevice: hDevice [
	^ self ffiCall: #( BOOL wglBindVideoCaptureDeviceNV ( UINT uVideoSlot , HVIDEOINPUTDEVICENV hDevice ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> bindVideoDeviceNV_hDC: hDC uVideoSlot: uVideoSlot hVideoDevice: hVideoDevice piAttribList: piAttribList [
	^ self ffiCall: #( BOOL wglBindVideoDeviceNV ( HDC hDC , unsigned int uVideoSlot , HVIDEOOUTPUTDEVICENV hVideoDevice , int* piAttribList ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> bindVideoImageNV_hVideoDevice: hVideoDevice hPbuffer: hPbuffer iVideoBuffer: iVideoBuffer [
	^ self ffiCall: #( BOOL wglBindVideoImageNV ( HPVIDEODEV hVideoDevice , HPBUFFERARB hPbuffer , int iVideoBuffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> blitContextFramebufferAMD_dstCtx: dstCtx srcX0: srcX0 srcY0: srcY0 srcX1: srcX1 srcY1: srcY1 dstX0: dstX0 dstY0: dstY0 dstX1: dstX1 dstY1: dstY1 mask: mask filter: filter [
	^ self ffiCall: #( VOID wglBlitContextFramebufferAMD ( HGLRC dstCtx , GLint srcX0 , GLint srcY0 , GLint srcX1 , GLint srcY1 , GLint dstX0 , GLint dstY0 , GLint dstX1 , GLint dstY1 , GLbitfield mask , GLenum filter ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> choosePixelFormatARB_hdc: hdc piAttribIList: piAttribIList pfAttribFList: pfAttribFList nMaxFormats: nMaxFormats piFormats: piFormats nNumFormats: nNumFormats [
	^ self ffiCall: #( BOOL wglChoosePixelFormatARB ( HDC hdc , int* piAttribIList , FLOAT pfAttribFList , UINT nMaxFormats , int* piFormats , UINT nNumFormats ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> choosePixelFormatEXT_hdc: hdc piAttribIList: piAttribIList pfAttribFList: pfAttribFList nMaxFormats: nMaxFormats piFormats: piFormats nNumFormats: nNumFormats [
	^ self ffiCall: #( BOOL wglChoosePixelFormatEXT ( HDC hdc , int* piAttribIList , FLOAT pfAttribFList , UINT nMaxFormats , int* piFormats , UINT nNumFormats ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> copyContext_hglrcSrc: hglrcSrc hglrcDst: hglrcDst mask: mask [
	^ self ffiCall: #( BOOL wglCopyContext ( HGLRC hglrcSrc , HGLRC hglrcDst , UINT mask ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> createAffinityDCNV: phGpuList [
	^ self ffiCall: #( HDC wglCreateAffinityDCNV ( HGPUNV phGpuList ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> createAssociatedContextAMD: id [
	^ self ffiCall: #( HGLRC wglCreateAssociatedContextAMD ( UINT id ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> createAssociatedContextAttribsAMD_id: id hShareContext: hShareContext attribList: attribList [
	^ self ffiCall: #( HGLRC wglCreateAssociatedContextAttribsAMD ( UINT id , HGLRC hShareContext , int* attribList ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> createBufferRegionARB_hDC: hDC iLayerPlane: iLayerPlane uType: uType [
	^ self ffiCall: #( HANDLE wglCreateBufferRegionARB ( HDC hDC , int iLayerPlane , UINT uType ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> createContext: hDc [
	^ self ffiCall: #( HGLRC wglCreateContext ( HDC hDc ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> createContextAttribsARB_hDC: hDC hShareContext: hShareContext attribList: attribList [
	^ self ffiCall: #( HGLRC wglCreateContextAttribsARB ( HDC hDC , HGLRC hShareContext , int* attribList ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> createDisplayColorTableEXT: id [
	^ self ffiCall: #( GLboolean wglCreateDisplayColorTableEXT ( GLushort id ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> createImageBufferI3D_hDC: hDC dwSize: dwSize uFlags: uFlags [
	^ self ffiCall: #( LPVOID wglCreateImageBufferI3D ( HDC hDC , DWORD dwSize , UINT uFlags ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> createLayerContext_hDc: hDc level: level [
	^ self ffiCall: #( HGLRC wglCreateLayerContext ( HDC hDc , int level ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> createPbufferARB_hDC: hDC iPixelFormat: iPixelFormat iWidth: iWidth iHeight: iHeight piAttribList: piAttribList [
	^ self ffiCall: #( HPBUFFERARB wglCreatePbufferARB ( HDC hDC , int iPixelFormat , int iWidth , int iHeight , int* piAttribList ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> createPbufferEXT_hDC: hDC iPixelFormat: iPixelFormat iWidth: iWidth iHeight: iHeight piAttribList: piAttribList [
	^ self ffiCall: #( HPBUFFEREXT wglCreatePbufferEXT ( HDC hDC , int iPixelFormat , int iWidth , int iHeight , int* piAttribList ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> cribePixelFormat_hdc: hdc ipfd: ipfd cjpfd: cjpfd ppfd: ppfd [
	^ self ffiCall: #( int DescribePixelFormat ( HDC hdc , int ipfd , UINT cjpfd , PIXELFORMATDESCRIPTOR ppfd ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> dXCloseDeviceNV: hDevice [
	^ self ffiCall: #( BOOL wglDXCloseDeviceNV ( HANDLE hDevice ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> dXLockObjectsNV_hDevice: hDevice count: count hObjects: hObjects [
	^ self ffiCall: #( BOOL wglDXLockObjectsNV ( HANDLE hDevice , GLint count , HANDLE hObjects ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> dXObjectAccessNV_hObject: hObject access: access [
	^ self ffiCall: #( BOOL wglDXObjectAccessNV ( HANDLE hObject , GLenum access ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> dXOpenDeviceNV: dxDevice [
	^ self ffiCall: #( HANDLE wglDXOpenDeviceNV ( void* dxDevice ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> dXRegisterObjectNV_hDevice: hDevice dxObject: dxObject name: name type: type access: access [
	^ self ffiCall: #( HANDLE wglDXRegisterObjectNV ( HANDLE hDevice , void* dxObject , GLuint name , GLenum type , GLenum access ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> dXSetResourceShareHandleNV_dxObject: dxObject shareHandle: shareHandle [
	^ self ffiCall: #( BOOL wglDXSetResourceShareHandleNV ( void* dxObject , HANDLE shareHandle ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> dXUnlockObjectsNV_hDevice: hDevice count: count hObjects: hObjects [
	^ self ffiCall: #( BOOL wglDXUnlockObjectsNV ( HANDLE hDevice , GLint count , HANDLE hObjects ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> dXUnregisterObjectNV_hDevice: hDevice hObject: hObject [
	^ self ffiCall: #( BOOL wglDXUnregisterObjectNV ( HANDLE hDevice , HANDLE hObject ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> delayBeforeSwapNV_hDC: hDC seconds: seconds [
	^ self ffiCall: #( BOOL wglDelayBeforeSwapNV ( HDC hDC , GLfloat seconds ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> deleteAssociatedContextAMD: hglrc [
	^ self ffiCall: #( BOOL wglDeleteAssociatedContextAMD ( HGLRC hglrc ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> deleteBufferRegionARB: hRegion [
	^ self ffiCall: #( VOID wglDeleteBufferRegionARB ( HANDLE hRegion ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> deleteContext: oldContext [
	^ self ffiCall: #( BOOL wglDeleteContext ( HGLRC oldContext ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> deleteDCNV: hdc [
	^ self ffiCall: #( BOOL wglDeleteDCNV ( HDC hdc ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> describeLayerPlane_hDc: hDc pixelFormat: pixelFormat layerPlane: layerPlane nBytes: nBytes plpd: plpd [
	^ self ffiCall: #( BOOL wglDescribeLayerPlane ( HDC hDc , int pixelFormat , int layerPlane , UINT nBytes , LAYERPLANEDESCRIPTOR plpd ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> destroyDisplayColorTableEXT: id [
	^ self ffiCall: #( VOID wglDestroyDisplayColorTableEXT ( GLushort id ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> destroyImageBufferI3D_hDC: hDC pAddress: pAddress [
	^ self ffiCall: #( BOOL wglDestroyImageBufferI3D ( HDC hDC , LPVOID pAddress ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> destroyPbufferARB: hPbuffer [
	^ self ffiCall: #( BOOL wglDestroyPbufferARB ( HPBUFFERARB hPbuffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> destroyPbufferEXT: hPbuffer [
	^ self ffiCall: #( BOOL wglDestroyPbufferEXT ( HPBUFFEREXT hPbuffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> disableFrameLockI3D [
	^ self ffiCall: #( BOOL wglDisableFrameLockI3D ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> disableGenlockI3D: hDC [
	^ self ffiCall: #( BOOL wglDisableGenlockI3D ( HDC hDC ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> enableFrameLockI3D [
	^ self ffiCall: #( BOOL wglEnableFrameLockI3D ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> enableGenlockI3D: hDC [
	^ self ffiCall: #( BOOL wglEnableGenlockI3D ( HDC hDC ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> endFrameTrackingI3D [
	^ self ffiCall: #( BOOL wglEndFrameTrackingI3D ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> enhMetaFilePixelFormat_hemf: hemf ppfd: ppfd [
	^ self ffiCall: #( UINT GetEnhMetaFilePixelFormat ( HENHMETAFILE hemf , PIXELFORMATDESCRIPTOR ppfd ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> enumGpuDevicesNV_hGpu: hGpu iDeviceIndex: iDeviceIndex lpGpuDevice: lpGpuDevice [
	^ self ffiCall: #( BOOL wglEnumGpuDevicesNV ( HGPUNV hGpu , UINT iDeviceIndex , PGPU_DEVICE lpGpuDevice ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> enumGpusFromAffinityDCNV_hAffinityDC: hAffinityDC iGpuIndex: iGpuIndex hGpu: hGpu [
	^ self ffiCall: #( BOOL wglEnumGpusFromAffinityDCNV ( HDC hAffinityDC , UINT iGpuIndex , HGPUNV hGpu ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> enumGpusNV_iGpuIndex: iGpuIndex phGpu: phGpu [
	^ self ffiCall: #( BOOL wglEnumGpusNV ( UINT iGpuIndex , HGPUNV phGpu ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> enumerateVideoCaptureDevicesNV_hDc: hDc phDeviceList: phDeviceList [
	^ self ffiCall: #( UINT wglEnumerateVideoCaptureDevicesNV ( HDC hDc , HVIDEOINPUTDEVICENV phDeviceList ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> enumerateVideoDevicesNV_hDC: hDC phDeviceList: phDeviceList [
	^ self ffiCall: #( int wglEnumerateVideoDevicesNV ( HDC hDC , HVIDEOOUTPUTDEVICENV phDeviceList ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> freeMemoryNV: pointer [
	^ self ffiCall: #( void wglFreeMemoryNV ( void* pointer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> genlockSampleRateI3D_hDC: hDC uRate: uRate [
	^ self ffiCall: #( BOOL wglGenlockSampleRateI3D ( HDC hDC , UINT uRate ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> genlockSourceDelayI3D_hDC: hDC uDelay: uDelay [
	^ self ffiCall: #( BOOL wglGenlockSourceDelayI3D ( HDC hDC , UINT uDelay ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> genlockSourceEdgeI3D_hDC: hDC uEdge: uEdge [
	^ self ffiCall: #( BOOL wglGenlockSourceEdgeI3D ( HDC hDC , UINT uEdge ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> genlockSourceI3D_hDC: hDC uSource: uSource [
	^ self ffiCall: #( BOOL wglGenlockSourceI3D ( HDC hDC , UINT uSource ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getContextGPUIDAMD: hglrc [
	^ self ffiCall: #( UINT wglGetContextGPUIDAMD ( HGLRC hglrc ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getCurrentAssociatedContextAMD [
	^ self ffiCall: #( HGLRC wglGetCurrentAssociatedContextAMD ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getCurrentContext [
	^ self ffiCall: #( HGLRC wglGetCurrentContext ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getCurrentDC [
	^ self ffiCall: #( HDC wglGetCurrentDC ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getCurrentReadDCARB [
	^ self ffiCall: #( HDC wglGetCurrentReadDCARB ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getCurrentReadDCEXT [
	^ self ffiCall: #( HDC wglGetCurrentReadDCEXT ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getDefaultProcAddress: lpszProc [
	^ self ffiCall: #( PROC wglGetDefaultProcAddress ( LPCSTR lpszProc ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getDigitalVideoParametersI3D_hDC: hDC iAttribute: iAttribute piValue: piValue [
	^ self ffiCall: #( BOOL wglGetDigitalVideoParametersI3D ( HDC hDC , int iAttribute , int* piValue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getExtensionsStringARB: hdc [
	^ self ffiCall: #( char* wglGetExtensionsStringARB ( HDC hdc ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getExtensionsStringEXT [
	^ self ffiCall: #( char* wglGetExtensionsStringEXT ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getFrameUsageI3D: pUsage [
	^ self ffiCall: #( BOOL wglGetFrameUsageI3D ( float* pUsage ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getGPUIDsAMD_maxCount: maxCount ids: ids [
	^ self ffiCall: #( UINT wglGetGPUIDsAMD ( UINT maxCount , UINT ids ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getGPUInfoAMD_id: id property: property dataType: dataType size: size data: data [
	^ self ffiCall: #( INT wglGetGPUInfoAMD ( UINT id , int property , GLenum dataType , UINT size , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getGammaTableI3D_hDC: hDC iEntries: iEntries puRed: puRed puGreen: puGreen puBlue: puBlue [
	^ self ffiCall: #( BOOL wglGetGammaTableI3D ( HDC hDC , int iEntries , USHORT puRed , USHORT puGreen , USHORT puBlue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getGammaTableParametersI3D_hDC: hDC iAttribute: iAttribute piValue: piValue [
	^ self ffiCall: #( BOOL wglGetGammaTableParametersI3D ( HDC hDC , int iAttribute , int* piValue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getGenlockSampleRateI3D_hDC: hDC uRate: uRate [
	^ self ffiCall: #( BOOL wglGetGenlockSampleRateI3D ( HDC hDC , UINT uRate ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getGenlockSourceDelayI3D_hDC: hDC uDelay: uDelay [
	^ self ffiCall: #( BOOL wglGetGenlockSourceDelayI3D ( HDC hDC , UINT uDelay ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getGenlockSourceEdgeI3D_hDC: hDC uEdge: uEdge [
	^ self ffiCall: #( BOOL wglGetGenlockSourceEdgeI3D ( HDC hDC , UINT uEdge ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getGenlockSourceI3D_hDC: hDC uSource: uSource [
	^ self ffiCall: #( BOOL wglGetGenlockSourceI3D ( HDC hDC , UINT uSource ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getLayerPaletteEntries_hdc: hdc iLayerPlane: iLayerPlane iStart: iStart cEntries: cEntries pcr: pcr [
	^ self ffiCall: #( int wglGetLayerPaletteEntries ( HDC hdc , int iLayerPlane , int iStart , int cEntries , COLORREF pcr ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getMscRateOML_hdc: hdc numerator: numerator denominator: denominator [
	^ self ffiCall: #( BOOL wglGetMscRateOML ( HDC hdc , INT32 numerator , INT32 denominator ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getPbufferDCARB: hPbuffer [
	^ self ffiCall: #( HDC wglGetPbufferDCARB ( HPBUFFERARB hPbuffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getPbufferDCEXT: hPbuffer [
	^ self ffiCall: #( HDC wglGetPbufferDCEXT ( HPBUFFEREXT hPbuffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getPixelFormatAttribfvARB_hdc: hdc iPixelFormat: iPixelFormat iLayerPlane: iLayerPlane nAttributes: nAttributes piAttributes: piAttributes pfValues: pfValues [
	^ self ffiCall: #( BOOL wglGetPixelFormatAttribfvARB ( HDC hdc , int iPixelFormat , int iLayerPlane , UINT nAttributes , int* piAttributes , FLOAT pfValues ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getPixelFormatAttribfvEXT_hdc: hdc iPixelFormat: iPixelFormat iLayerPlane: iLayerPlane nAttributes: nAttributes piAttributes: piAttributes pfValues: pfValues [
	^ self ffiCall: #( BOOL wglGetPixelFormatAttribfvEXT ( HDC hdc , int iPixelFormat , int iLayerPlane , UINT nAttributes , int* piAttributes , FLOAT pfValues ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getPixelFormatAttribivARB_hdc: hdc iPixelFormat: iPixelFormat iLayerPlane: iLayerPlane nAttributes: nAttributes piAttributes: piAttributes piValues: piValues [
	^ self ffiCall: #( BOOL wglGetPixelFormatAttribivARB ( HDC hdc , int iPixelFormat , int iLayerPlane , UINT nAttributes , int* piAttributes , int* piValues ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getPixelFormatAttribivEXT_hdc: hdc iPixelFormat: iPixelFormat iLayerPlane: iLayerPlane nAttributes: nAttributes piAttributes: piAttributes piValues: piValues [
	^ self ffiCall: #( BOOL wglGetPixelFormatAttribivEXT ( HDC hdc , int iPixelFormat , int iLayerPlane , UINT nAttributes , int* piAttributes , int* piValues ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getProcAddress: lpszProc [
	^ self ffiCall: #( PROC wglGetProcAddress ( LPCSTR lpszProc ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getSwapIntervalEXT [
	^ self ffiCall: #( int wglGetSwapIntervalEXT ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getSyncValuesOML_hdc: hdc ust: ust msc: msc sbc: sbc [
	^ self ffiCall: #( BOOL wglGetSyncValuesOML ( HDC hdc , INT64 ust , INT64 msc , INT64 sbc ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getVideoDeviceNV_hDC: hDC numDevices: numDevices hVideoDevice: hVideoDevice [
	^ self ffiCall: #( BOOL wglGetVideoDeviceNV ( HDC hDC , int numDevices , HPVIDEODEV hVideoDevice ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> getVideoInfoNV_hpVideoDevice: hpVideoDevice pulCounterOutputPbuffer: pulCounterOutputPbuffer pulCounterOutputVideo: pulCounterOutputVideo [
	^ self ffiCall: #( BOOL wglGetVideoInfoNV ( HPVIDEODEV hpVideoDevice , unsigned long* pulCounterOutputPbuffer , unsigned long* pulCounterOutputVideo ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> isEnabledFrameLockI3D: pFlag [
	^ self ffiCall: #( BOOL wglIsEnabledFrameLockI3D ( BOOL pFlag ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> isEnabledGenlockI3D_hDC: hDC pFlag: pFlag [
	^ self ffiCall: #( BOOL wglIsEnabledGenlockI3D ( HDC hDC , BOOL pFlag ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> joinSwapGroupNV_hDC: hDC group: group [
	^ self ffiCall: #( BOOL wglJoinSwapGroupNV ( HDC hDC , GLuint group ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> loadDisplayColorTableEXT_table: table length: length [
	^ self ffiCall: #( GLboolean wglLoadDisplayColorTableEXT ( GLushort table , GLuint length ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> lockVideoCaptureDeviceNV_hDc: hDc hDevice: hDevice [
	^ self ffiCall: #( BOOL wglLockVideoCaptureDeviceNV ( HDC hDc , HVIDEOINPUTDEVICENV hDevice ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> makeAssociatedContextCurrentAMD: hglrc [
	^ self ffiCall: #( BOOL wglMakeAssociatedContextCurrentAMD ( HGLRC hglrc ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> makeContextCurrentARB_hDrawDC: hDrawDC hReadDC: hReadDC hglrc: hglrc [
	^ self ffiCall: #( BOOL wglMakeContextCurrentARB ( HDC hDrawDC , HDC hReadDC , HGLRC hglrc ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> makeContextCurrentEXT_hDrawDC: hDrawDC hReadDC: hReadDC hglrc: hglrc [
	^ self ffiCall: #( BOOL wglMakeContextCurrentEXT ( HDC hDrawDC , HDC hReadDC , HGLRC hglrc ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> makeCurrent_hDc: hDc newContext: newContext [
	^ self ffiCall: #( BOOL wglMakeCurrent ( HDC hDc , HGLRC newContext ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> osePixelFormat_hDc: hDc pPfd: pPfd [
	^ self ffiCall: #( int ChoosePixelFormat ( HDC hDc , PIXELFORMATDESCRIPTOR pPfd ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> pBuffers: hdc [
	^ self ffiCall: #( BOOL SwapBuffers ( HDC hdc ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> pixelFormat: hdc [
	^ self ffiCall: #( int GetPixelFormat ( HDC hdc ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> pixelFormat_hdc: hdc ipfd: ipfd ppfd: ppfd [
	^ self ffiCall: #( BOOL SetPixelFormat ( HDC hdc , int ipfd , PIXELFORMATDESCRIPTOR ppfd ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> queryCurrentContextNV_iAttribute: iAttribute piValue: piValue [
	^ self ffiCall: #( BOOL wglQueryCurrentContextNV ( int iAttribute , int* piValue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> queryFrameCountNV_hDC: hDC count: count [
	^ self ffiCall: #( BOOL wglQueryFrameCountNV ( HDC hDC , GLuint count ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> queryFrameLockMasterI3D: pFlag [
	^ self ffiCall: #( BOOL wglQueryFrameLockMasterI3D ( BOOL pFlag ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> queryFrameTrackingI3D_pFrameCount: pFrameCount pMissedFrames: pMissedFrames pLastMissedUsage: pLastMissedUsage [
	^ self ffiCall: #( BOOL wglQueryFrameTrackingI3D ( DWORD pFrameCount , DWORD pMissedFrames , float* pLastMissedUsage ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> queryGenlockMaxSourceDelayI3D_hDC: hDC uMaxLineDelay: uMaxLineDelay uMaxPixelDelay: uMaxPixelDelay [
	^ self ffiCall: #( BOOL wglQueryGenlockMaxSourceDelayI3D ( HDC hDC , UINT uMaxLineDelay , UINT uMaxPixelDelay ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> queryMaxSwapGroupsNV_hDC: hDC maxGroups: maxGroups maxBarriers: maxBarriers [
	^ self ffiCall: #( BOOL wglQueryMaxSwapGroupsNV ( HDC hDC , GLuint maxGroups , GLuint maxBarriers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> queryPbufferARB_hPbuffer: hPbuffer iAttribute: iAttribute piValue: piValue [
	^ self ffiCall: #( BOOL wglQueryPbufferARB ( HPBUFFERARB hPbuffer , int iAttribute , int* piValue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> queryPbufferEXT_hPbuffer: hPbuffer iAttribute: iAttribute piValue: piValue [
	^ self ffiCall: #( BOOL wglQueryPbufferEXT ( HPBUFFEREXT hPbuffer , int iAttribute , int* piValue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> querySwapGroupNV_hDC: hDC group: group barrier: barrier [
	^ self ffiCall: #( BOOL wglQuerySwapGroupNV ( HDC hDC , GLuint group , GLuint barrier ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> queryVideoCaptureDeviceNV_hDc: hDc hDevice: hDevice iAttribute: iAttribute piValue: piValue [
	^ self ffiCall: #( BOOL wglQueryVideoCaptureDeviceNV ( HDC hDc , HVIDEOINPUTDEVICENV hDevice , int iAttribute , int* piValue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> realizeLayerPalette_hdc: hdc iLayerPlane: iLayerPlane bRealize: bRealize [
	^ self ffiCall: #( BOOL wglRealizeLayerPalette ( HDC hdc , int iLayerPlane , BOOL bRealize ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> releaseImageBufferEventsI3D_hDC: hDC pAddress: pAddress count: count [
	^ self ffiCall: #( BOOL wglReleaseImageBufferEventsI3D ( HDC hDC , LPVOID pAddress , UINT count ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> releasePbufferDCARB_hPbuffer: hPbuffer hDC: hDC [
	^ self ffiCall: #( int wglReleasePbufferDCARB ( HPBUFFERARB hPbuffer , HDC hDC ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> releasePbufferDCEXT_hPbuffer: hPbuffer hDC: hDC [
	^ self ffiCall: #( int wglReleasePbufferDCEXT ( HPBUFFEREXT hPbuffer , HDC hDC ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> releaseTexImageARB_hPbuffer: hPbuffer iBuffer: iBuffer [
	^ self ffiCall: #( BOOL wglReleaseTexImageARB ( HPBUFFERARB hPbuffer , int iBuffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> releaseVideoCaptureDeviceNV_hDc: hDc hDevice: hDevice [
	^ self ffiCall: #( BOOL wglReleaseVideoCaptureDeviceNV ( HDC hDc , HVIDEOINPUTDEVICENV hDevice ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> releaseVideoDeviceNV: hVideoDevice [
	^ self ffiCall: #( BOOL wglReleaseVideoDeviceNV ( HPVIDEODEV hVideoDevice ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> releaseVideoImageNV_hPbuffer: hPbuffer iVideoBuffer: iVideoBuffer [
	^ self ffiCall: #( BOOL wglReleaseVideoImageNV ( HPBUFFERARB hPbuffer , int iVideoBuffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> resetFrameCountNV: hDC [
	^ self ffiCall: #( BOOL wglResetFrameCountNV ( HDC hDC ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> restoreBufferRegionARB_hRegion: hRegion x: x y: y width: width height: height xSrc: xSrc ySrc: ySrc [
	^ self ffiCall: #( BOOL wglRestoreBufferRegionARB ( HANDLE hRegion , int x , int y , int width , int height , int xSrc , int ySrc ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> saveBufferRegionARB_hRegion: hRegion x: x y: y width: width height: height [
	^ self ffiCall: #( BOOL wglSaveBufferRegionARB ( HANDLE hRegion , int x , int y , int width , int height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> sendPbufferToVideoNV_hPbuffer: hPbuffer iBufferType: iBufferType pulCounterPbuffer: pulCounterPbuffer bBlock: bBlock [
	^ self ffiCall: #( BOOL wglSendPbufferToVideoNV ( HPBUFFERARB hPbuffer , int iBufferType , unsigned long* pulCounterPbuffer , BOOL bBlock ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> setDigitalVideoParametersI3D_hDC: hDC iAttribute: iAttribute piValue: piValue [
	^ self ffiCall: #( BOOL wglSetDigitalVideoParametersI3D ( HDC hDC , int iAttribute , int* piValue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> setGammaTableI3D_hDC: hDC iEntries: iEntries puRed: puRed puGreen: puGreen puBlue: puBlue [
	^ self ffiCall: #( BOOL wglSetGammaTableI3D ( HDC hDC , int iEntries , USHORT puRed , USHORT puGreen , USHORT puBlue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> setGammaTableParametersI3D_hDC: hDC iAttribute: iAttribute piValue: piValue [
	^ self ffiCall: #( BOOL wglSetGammaTableParametersI3D ( HDC hDC , int iAttribute , int* piValue ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> setLayerPaletteEntries_hdc: hdc iLayerPlane: iLayerPlane iStart: iStart cEntries: cEntries pcr: pcr [
	^ self ffiCall: #( int wglSetLayerPaletteEntries ( HDC hdc , int iLayerPlane , int iStart , int cEntries , COLORREF pcr ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> setPbufferAttribARB_hPbuffer: hPbuffer piAttribList: piAttribList [
	^ self ffiCall: #( BOOL wglSetPbufferAttribARB ( HPBUFFERARB hPbuffer , int* piAttribList ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> setStereoEmitterState3DL_hDC: hDC uState: uState [
	^ self ffiCall: #( BOOL wglSetStereoEmitterState3DL ( HDC hDC , UINT uState ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> shareLists_hrcSrvShare: hrcSrvShare hrcSrvSource: hrcSrvSource [
	^ self ffiCall: #( BOOL wglShareLists ( HGLRC hrcSrvShare , HGLRC hrcSrvSource ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> swapBuffersMscOML_hdc: hdc target_msc: target_msc divisor: divisor remainder: remainder [
	^ self ffiCall: #( INT64 wglSwapBuffersMscOML ( HDC hdc , INT64 target_msc , INT64 divisor , INT64 remainder ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> swapIntervalEXT: interval [
	^ self ffiCall: #( BOOL wglSwapIntervalEXT ( int interval ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> swapLayerBuffersMscOML_hdc: hdc fuPlanes: fuPlanes target_msc: target_msc divisor: divisor remainder: remainder [
	^ self ffiCall: #( INT64 wglSwapLayerBuffersMscOML ( HDC hdc , int fuPlanes , INT64 target_msc , INT64 divisor , INT64 remainder ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> swapLayerBuffers_hdc: hdc fuFlags: fuFlags [
	^ self ffiCall: #( BOOL wglSwapLayerBuffers ( HDC hdc , UINT fuFlags ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> useFontBitmapsA_hDC: hDC first: first count: count listBase: listBase [
	^ self ffiCall: #( BOOL wglUseFontBitmapsA ( HDC hDC , DWORD first , DWORD count , DWORD listBase ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> useFontBitmapsW_hDC: hDC first: first count: count listBase: listBase [
	^ self ffiCall: #( BOOL wglUseFontBitmapsW ( HDC hDC , DWORD first , DWORD count , DWORD listBase ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> useFontBitmaps_hDC: hDC first: first count: count listBase: listBase [
	^ self ffiCall: #( BOOL wglUseFontBitmaps ( HDC hDC , DWORD first , DWORD count , DWORD listBase ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> useFontOutlinesA_hDC: hDC first: first count: count listBase: listBase deviation: deviation extrusion: extrusion format: format lpgmf: lpgmf [
	^ self ffiCall: #( BOOL wglUseFontOutlinesA ( HDC hDC , DWORD first , DWORD count , DWORD listBase , FLOAT deviation , FLOAT extrusion , int format , LPGLYPHMETRICSFLOAT lpgmf ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> useFontOutlinesW_hDC: hDC first: first count: count listBase: listBase deviation: deviation extrusion: extrusion format: format lpgmf: lpgmf [
	^ self ffiCall: #( BOOL wglUseFontOutlinesW ( HDC hDC , DWORD first , DWORD count , DWORD listBase , FLOAT deviation , FLOAT extrusion , int format , LPGLYPHMETRICSFLOAT lpgmf ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> useFontOutlines_hDC: hDC first: first count: count listBase: listBase deviation: deviation extrusion: extrusion format: format lpgmf: lpgmf [
	^ self ffiCall: #( BOOL wglUseFontOutlines ( HDC hDC , DWORD first , DWORD count , DWORD listBase , FLOAT deviation , FLOAT extrusion , int format , LPGLYPHMETRICSFLOAT lpgmf ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> waitForMscOML_hdc: hdc target_msc: target_msc divisor: divisor remainder: remainder ust: ust msc: msc sbc: sbc [
	^ self ffiCall: #( BOOL wglWaitForMscOML ( HDC hdc , INT64 target_msc , INT64 divisor , INT64 remainder , INT64 ust , INT64 msc , INT64 sbc ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenWGL >> waitForSbcOML_hdc: hdc target_sbc: target_sbc ust: ust msc: msc sbc: sbc [
	^ self ffiCall: #( BOOL wglWaitForSbcOML ( HDC hdc , INT64 target_sbc , INT64 ust , INT64 msc , INT64 sbc ) ) options: #( +optIndirectCallOpenGL )
]
