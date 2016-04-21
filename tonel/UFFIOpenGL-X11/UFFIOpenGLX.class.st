Class {
	#name : #UFFIOpenGLX,
	#superclass : #Object,
	#pools : [
		'UFFIOpenGLTypes',
		'UFFIOpenGLXTypes'
	],
	#category : #'UFFIOpenGL-X11'
}

{ #category : #'generated bindings' }
UFFIOpenGLX >> bindChannelToWindowSGIX_display: display screen: screen channel: channel window: window [
	^ self ffiCall: #( int glXBindChannelToWindowSGIX ( Display display , int screen , int channel , Window window ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> bindHyperpipeSGIX_dpy: dpy hpId: hpId [
	^ self ffiCall: #( int glXBindHyperpipeSGIX ( Display dpy , int hpId ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> bindSwapBarrierSGIX_dpy: dpy drawable: drawable barrier: barrier [
	^ self ffiCall: #( void glXBindSwapBarrierSGIX ( Display dpy , GLXDrawable drawable , int barrier ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> bindTexImageEXT_dpy: dpy drawable: drawable buffer: buffer attrib_list: attrib_list [
	^ self ffiCall: #( void glXBindTexImageEXT ( Display dpy , GLXDrawable drawable , int buffer , int* attrib_list ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> bindVideoCaptureDeviceNV_dpy: dpy video_capture_slot: video_capture_slot device: device [
	^ self ffiCall: #( int glXBindVideoCaptureDeviceNV ( Display dpy , unsigned int video_capture_slot , GLXVideoCaptureDeviceNV device ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> bindVideoDeviceNV_dpy: dpy video_slot: video_slot video_device: video_device attrib_list: attrib_list [
	^ self ffiCall: #( int glXBindVideoDeviceNV ( Display dpy , unsigned int video_slot , unsigned int video_device , int* attrib_list ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> bindVideoImageNV_dpy: dpy VideoDevice: VideoDevice pbuf: pbuf iVideoBuffer: iVideoBuffer [
	^ self ffiCall: #( int glXBindVideoImageNV ( Display dpy , GLXVideoDeviceNV VideoDevice , GLXPbuffer pbuf , int iVideoBuffer ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> blitContextFramebufferAMD_dstCtx: dstCtx srcX0: srcX0 srcY0: srcY0 srcX1: srcX1 srcY1: srcY1 dstX0: dstX0 dstY0: dstY0 dstX1: dstX1 dstY1: dstY1 mask: mask filter: filter [
	^ self ffiCall: #( void glXBlitContextFramebufferAMD ( GLXContext dstCtx , GLint srcX0 , GLint srcY0 , GLint srcX1 , GLint srcY1 , GLint dstX0 , GLint dstY0 , GLint dstX1 , GLint dstY1 , GLbitfield mask , GLenum filter ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> channelRectSGIX_display: display screen: screen channel: channel x: x y: y w: w h: h [
	^ self ffiCall: #( int glXChannelRectSGIX ( Display display , int screen , int channel , int x , int y , int w , int h ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> channelRectSyncSGIX_display: display screen: screen channel: channel synctype: synctype [
	^ self ffiCall: #( int glXChannelRectSyncSGIX ( Display display , int screen , int channel , GLenum synctype ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> chooseFBConfigSGIX_dpy: dpy screen: screen attrib_list: attrib_list nelements: nelements [
	^ self ffiCall: #( * glXChooseFBConfigSGIX ( Display dpy , int screen , int* attrib_list , int* nelements ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> chooseFBConfig_dpy: dpy screen: screen attrib_list: attrib_list nelements: nelements [
	^ self ffiCall: #( * glXChooseFBConfig ( Display dpy , int screen , int* attrib_list , int* nelements ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> chooseVisual_dpy: dpy screen: screen attribList: attribList [
	^ self ffiCall: #( * glXChooseVisual ( Display dpy , int screen , int* attribList ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> copyBufferSubDataNV_dpy: dpy readCtx: readCtx writeCtx: writeCtx readTarget: readTarget writeTarget: writeTarget readOffset: readOffset writeOffset: writeOffset size: size [
	^ self ffiCall: #( void glXCopyBufferSubDataNV ( Display dpy , GLXContext readCtx , GLXContext writeCtx , GLenum readTarget , GLenum writeTarget , GLintptr readOffset , GLintptr writeOffset , GLsizeiptr size ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> copyContext_dpy: dpy src: src dst: dst mask: mask [
	^ self ffiCall: #( void glXCopyContext ( Display dpy , GLXContext src , GLXContext dst , unsigned long mask ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> copySubBufferMESA_dpy: dpy drawable: drawable x: x y: y width: width height: height [
	^ self ffiCall: #( void glXCopySubBufferMESA ( Display dpy , GLXDrawable drawable , int x , int y , int width , int height ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> cushionSGI_dpy: dpy window: window cushion: cushion [
	^ self ffiCall: #( void glXCushionSGI ( Display dpy , Window window , float cushion ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> destroyContext_dpy: dpy ctx: ctx [
	^ self ffiCall: #( void glXDestroyContext ( Display dpy , GLXContext ctx ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> destroyGLXPbufferSGIX_dpy: dpy pbuf: pbuf [
	^ self ffiCall: #( void glXDestroyGLXPbufferSGIX ( Display dpy , GLXPbufferSGIX pbuf ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> destroyGLXPixmap_dpy: dpy pixmap: pixmap [
	^ self ffiCall: #( void glXDestroyGLXPixmap ( Display dpy , GLXPixmap pixmap ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> destroyGLXVideoSourceSGIX_dpy: dpy glxvideosource: glxvideosource [
	^ self ffiCall: #( void glXDestroyGLXVideoSourceSGIX ( Display dpy , GLXVideoSourceSGIX glxvideosource ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> destroyHyperpipeConfigSGIX_dpy: dpy hpId: hpId [
	^ self ffiCall: #( int glXDestroyHyperpipeConfigSGIX ( Display dpy , int hpId ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> destroyPbuffer_dpy: dpy pbuf: pbuf [
	^ self ffiCall: #( void glXDestroyPbuffer ( Display dpy , GLXPbuffer pbuf ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> destroyPixmap_dpy: dpy pixmap: pixmap [
	^ self ffiCall: #( void glXDestroyPixmap ( Display dpy , GLXPixmap pixmap ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> destroyWindow_dpy: dpy win: win [
	^ self ffiCall: #( void glXDestroyWindow ( Display dpy , GLXWindow win ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> enumerateVideoCaptureDevicesNV_dpy: dpy screen: screen nelements: nelements [
	^ self ffiCall: #( * glXEnumerateVideoCaptureDevicesNV ( Display dpy , int screen , int* nelements ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> enumerateVideoDevicesNV_dpy: dpy screen: screen nelements: nelements [
	^ self ffiCall: #( unsigned int* glXEnumerateVideoDevicesNV ( Display dpy , int screen , int* nelements ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> freeContextEXT_dpy: dpy context: context [
	^ self ffiCall: #( void glXFreeContextEXT ( Display dpy , GLXContext context ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> getAGPOffsetMESA_pointer: pointer [
	^ self ffiCall: #( unsigned int glXGetAGPOffsetMESA ( void* pointer ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> getClientString_dpy: dpy name: name [
	^ self ffiCall: #( char* glXGetClientString ( Display dpy , int name ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> getConfig_dpy: dpy visual: visual attrib: attrib value: value [
	^ self ffiCall: #( int glXGetConfig ( Display dpy , XVisualInfo visual , int attrib , int* value ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> getContextGPUIDAMD_ctx: ctx [
	^ self ffiCall: #( unsigned int glXGetContextGPUIDAMD ( GLXContext ctx ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> getCurrentDisplay [
	^ self ffiCall: #( * glXGetCurrentDisplay ( ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> getCurrentDisplayEXT [
	^ self ffiCall: #( * glXGetCurrentDisplayEXT ( ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> getFBConfigAttribSGIX_dpy: dpy config: config attribute: attribute value: value [
	^ self ffiCall: #( int glXGetFBConfigAttribSGIX ( Display dpy , GLXFBConfigSGIX config , int attribute , int* value ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> getFBConfigAttrib_dpy: dpy config: config attribute: attribute value: value [
	^ self ffiCall: #( int glXGetFBConfigAttrib ( Display dpy , GLXFBConfig config , int attribute , int* value ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> getFBConfigs_dpy: dpy screen: screen nelements: nelements [
	^ self ffiCall: #( * glXGetFBConfigs ( Display dpy , int screen , int* nelements ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> getGPUIDsAMD_maxCount: maxCount ids: ids [
	^ self ffiCall: #( unsigned int glXGetGPUIDsAMD ( unsigned int maxCount , unsigned int* ids ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> getGPUInfoAMD_id: id property: property dataType: dataType size: size data: data [
	^ self ffiCall: #( int glXGetGPUInfoAMD ( unsigned int id , int property , GLenum dataType , unsigned int size , void* data ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> getSelectedEventSGIX_dpy: dpy drawable: drawable mask: mask [
	^ self ffiCall: #( void glXGetSelectedEventSGIX ( Display dpy , GLXDrawable drawable , unsigned long* mask ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> getSelectedEvent_dpy: dpy draw: draw event_mask: event_mask [
	^ self ffiCall: #( void glXGetSelectedEvent ( Display dpy , GLXDrawable draw , unsigned long* event_mask ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> getVideoDeviceNV_dpy: dpy screen: screen numVideoDevices: numVideoDevices pVideoDevice: pVideoDevice [
	^ self ffiCall: #( int glXGetVideoDeviceNV ( Display dpy , int screen , int numVideoDevices , GLXVideoDeviceNV pVideoDevice ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> getVideoInfoNV_dpy: dpy screen: screen VideoDevice: VideoDevice pulCounterOutputPbuffer: pulCounterOutputPbuffer pulCounterOutputVideo: pulCounterOutputVideo [
	^ self ffiCall: #( int glXGetVideoInfoNV ( Display dpy , int screen , GLXVideoDeviceNV VideoDevice , unsigned long* pulCounterOutputPbuffer , unsigned long* pulCounterOutputVideo ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> getVideoSyncSGI_count: count [
	^ self ffiCall: #( int glXGetVideoSyncSGI ( unsigned int* count ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> getVisualFromFBConfigSGIX_dpy: dpy config: config [
	^ self ffiCall: #( * glXGetVisualFromFBConfigSGIX ( Display dpy , GLXFBConfigSGIX config ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> getVisualFromFBConfig_dpy: dpy config: config [
	^ self ffiCall: #( * glXGetVisualFromFBConfig ( Display dpy , GLXFBConfig config ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> hyperpipeAttribSGIX_dpy: dpy timeSlice: timeSlice attrib: attrib size: size attribList: attribList [
	^ self ffiCall: #( int glXHyperpipeAttribSGIX ( Display dpy , int timeSlice , int attrib , int size , void* attribList ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> hyperpipeConfigSGIX_dpy: dpy networkId: networkId npipes: npipes cfg: cfg hpId: hpId [
	^ self ffiCall: #( int glXHyperpipeConfigSGIX ( Display dpy , int networkId , int npipes , GLXHyperpipeConfigSGIX cfg , int* hpId ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> joinSwapGroupSGIX_dpy: dpy drawable: drawable member: member [
	^ self ffiCall: #( void glXJoinSwapGroupSGIX ( Display dpy , GLXDrawable drawable , GLXDrawable member ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> lockVideoCaptureDeviceNV_dpy: dpy device: device [
	^ self ffiCall: #( void glXLockVideoCaptureDeviceNV ( Display dpy , GLXVideoCaptureDeviceNV device ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> namedCopyBufferSubDataNV_dpy: dpy readCtx: readCtx writeCtx: writeCtx readBuffer: readBuffer writeBuffer: writeBuffer readOffset: readOffset writeOffset: writeOffset size: size [
	^ self ffiCall: #( void glXNamedCopyBufferSubDataNV ( Display dpy , GLXContext readCtx , GLXContext writeCtx , GLuint readBuffer , GLuint writeBuffer , GLintptr readOffset , GLintptr writeOffset , GLsizeiptr size ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> queryChannelDeltasSGIX_display: display screen: screen channel: channel x: x y: y w: w h: h [
	^ self ffiCall: #( int glXQueryChannelDeltasSGIX ( Display display , int screen , int channel , int* x , int* y , int* w , int* h ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> queryChannelRectSGIX_display: display screen: screen channel: channel dx: dx dy: dy dw: dw dh: dh [
	^ self ffiCall: #( int glXQueryChannelRectSGIX ( Display display , int screen , int channel , int* dx , int* dy , int* dw , int* dh ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> queryContextInfoEXT_dpy: dpy context: context attribute: attribute value: value [
	^ self ffiCall: #( int glXQueryContextInfoEXT ( Display dpy , GLXContext context , int attribute , int* value ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> queryContext_dpy: dpy ctx: ctx attribute: attribute value: value [
	^ self ffiCall: #( int glXQueryContext ( Display dpy , GLXContext ctx , int attribute , int* value ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> queryCurrentRendererStringMESA_attribute: attribute [
	^ self ffiCall: #( char* glXQueryCurrentRendererStringMESA ( int attribute ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> queryDrawable_dpy: dpy draw: draw attribute: attribute value: value [
	^ self ffiCall: #( void glXQueryDrawable ( Display dpy , GLXDrawable draw , int attribute , unsigned int* value ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> queryExtensionsString_dpy: dpy screen: screen [
	^ self ffiCall: #( char* glXQueryExtensionsString ( Display dpy , int screen ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> queryGLXPbufferSGIX_dpy: dpy pbuf: pbuf attribute: attribute value: value [
	^ self ffiCall: #( int glXQueryGLXPbufferSGIX ( Display dpy , GLXPbufferSGIX pbuf , int attribute , unsigned int* value ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> queryHyperpipeAttribSGIX_dpy: dpy timeSlice: timeSlice attrib: attrib size: size returnAttribList: returnAttribList [
	^ self ffiCall: #( int glXQueryHyperpipeAttribSGIX ( Display dpy , int timeSlice , int attrib , int size , void* returnAttribList ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> queryHyperpipeBestAttribSGIX_dpy: dpy timeSlice: timeSlice attrib: attrib size: size attribList: attribList returnAttribList: returnAttribList [
	^ self ffiCall: #( int glXQueryHyperpipeBestAttribSGIX ( Display dpy , int timeSlice , int attrib , int size , void* attribList , void* returnAttribList ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> queryHyperpipeConfigSGIX_dpy: dpy hpId: hpId npipes: npipes [
	^ self ffiCall: #( * glXQueryHyperpipeConfigSGIX ( Display dpy , int hpId , int* npipes ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> queryHyperpipeNetworkSGIX_dpy: dpy npipes: npipes [
	^ self ffiCall: #( * glXQueryHyperpipeNetworkSGIX ( Display dpy , int* npipes ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> queryRendererStringMESA_dpy: dpy screen: screen renderer: renderer attribute: attribute [
	^ self ffiCall: #( char* glXQueryRendererStringMESA ( Display dpy , int screen , int renderer , int attribute ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> queryServerString_dpy: dpy screen: screen name: name [
	^ self ffiCall: #( char* glXQueryServerString ( Display dpy , int screen , int name ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> queryVideoCaptureDeviceNV_dpy: dpy device: device attribute: attribute value: value [
	^ self ffiCall: #( int glXQueryVideoCaptureDeviceNV ( Display dpy , GLXVideoCaptureDeviceNV device , int attribute , int* value ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> releaseTexImageEXT_dpy: dpy drawable: drawable buffer: buffer [
	^ self ffiCall: #( void glXReleaseTexImageEXT ( Display dpy , GLXDrawable drawable , int buffer ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> releaseVideoCaptureDeviceNV_dpy: dpy device: device [
	^ self ffiCall: #( void glXReleaseVideoCaptureDeviceNV ( Display dpy , GLXVideoCaptureDeviceNV device ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> releaseVideoDeviceNV_dpy: dpy screen: screen VideoDevice: VideoDevice [
	^ self ffiCall: #( int glXReleaseVideoDeviceNV ( Display dpy , int screen , GLXVideoDeviceNV VideoDevice ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> releaseVideoImageNV_dpy: dpy pbuf: pbuf [
	^ self ffiCall: #( int glXReleaseVideoImageNV ( Display dpy , GLXPbuffer pbuf ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> selectEventSGIX_dpy: dpy drawable: drawable mask: mask [
	^ self ffiCall: #( void glXSelectEventSGIX ( Display dpy , GLXDrawable drawable , unsigned long mask ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> selectEvent_dpy: dpy draw: draw event_mask: event_mask [
	^ self ffiCall: #( void glXSelectEvent ( Display dpy , GLXDrawable draw , unsigned long event_mask ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> sendPbufferToVideoNV_dpy: dpy pbuf: pbuf iBufferType: iBufferType pulCounterPbuffer: pulCounterPbuffer bBlock: bBlock [
	^ self ffiCall: #( int glXSendPbufferToVideoNV ( Display dpy , GLXPbuffer pbuf , int iBufferType , unsigned long* pulCounterPbuffer , GLboolean bBlock ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> swapBuffers_dpy: dpy drawable: drawable [
	^ self ffiCall: #( void glXSwapBuffers ( Display dpy , GLXDrawable drawable ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> swapIntervalEXT_dpy: dpy drawable: drawable interval: interval [
	^ self ffiCall: #( void glXSwapIntervalEXT ( Display dpy , GLXDrawable drawable , int interval ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> swapIntervalSGI_interval: interval [
	^ self ffiCall: #( int glXSwapIntervalSGI ( int interval ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> useXFont_font: font first: first count: count list: list [
	^ self ffiCall: #( void glXUseXFont ( Font font , int first , int count , int list ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> waitGL [
	^ self ffiCall: #( void glXWaitGL ( ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> waitVideoSyncSGI_divisor: divisor remainder: remainder count: count [
	^ self ffiCall: #( int glXWaitVideoSyncSGI ( int divisor , int remainder , unsigned int* count ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> waitX [
	^ self ffiCall: #( void glXWaitX ( ) ) options: #(+optIndirectCall)
]
