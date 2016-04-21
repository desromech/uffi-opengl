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
UFFIOpenGLX >> associateDMPbufferSGIX_dpy: dpy pbuffer: pbuffer params: params dmbuffer: dmbuffer [
	^ self ffiCall: #( Bool glXAssociateDMPbufferSGIX ( Display dpy , GLXPbufferSGIX pbuffer , DMparams params , DMbuffer dmbuffer ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> bindChannelToWindowSGIX_display: display screen: screen channel: channel window: window [
	^ self ffiCall: #( int glXBindChannelToWindowSGIX ( Display display , int screen , int channel , Window window ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> bindHyperpipeSGIX_dpy: dpy hpId: hpId [
	^ self ffiCall: #( int glXBindHyperpipeSGIX ( Display dpy , int hpId ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> bindSwapBarrierNV_dpy: dpy group: group barrier: barrier [
	^ self ffiCall: #( Bool glXBindSwapBarrierNV ( Display dpy , GLuint group , GLuint barrier ) ) options: #(+optIndirectCall)
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
	^ self ffiCall: #( GLXFBConfigSGIX glXChooseFBConfigSGIX ( Display dpy , int screen , int* attrib_list , int* nelements ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> chooseFBConfig_dpy: dpy screen: screen attrib_list: attrib_list nelements: nelements [
	^ self ffiCall: #( GLXFBConfig glXChooseFBConfig ( Display dpy , int screen , int* attrib_list , int* nelements ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> chooseVisual_dpy: dpy screen: screen attribList: attribList [
	^ self ffiCall: #( XVisualInfo glXChooseVisual ( Display dpy , int screen , int* attribList ) ) options: #(+optIndirectCall)
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
UFFIOpenGLX >> createAssociatedContextAMD_id: id share_list: share_list [
	^ self ffiCall: #( GLXContext glXCreateAssociatedContextAMD ( unsigned int id , GLXContext share_list ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> createAssociatedContextAttribsAMD_id: id share_context: share_context attribList: attribList [
	^ self ffiCall: #( GLXContext glXCreateAssociatedContextAttribsAMD ( unsigned int id , GLXContext share_context , int* attribList ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> createContextAttribsARB_dpy: dpy config: config share_context: share_context direct: direct attrib_list: attrib_list [
	^ self ffiCall: #( GLXContext glXCreateContextAttribsARB ( Display dpy , GLXFBConfig config , GLXContext share_context , Bool direct , int* attrib_list ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> createContextWithConfigSGIX_dpy: dpy config: config render_type: render_type share_list: share_list direct: direct [
	^ self ffiCall: #( GLXContext glXCreateContextWithConfigSGIX ( Display dpy , GLXFBConfigSGIX config , int render_type , GLXContext share_list , Bool direct ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> createContext_dpy: dpy vis: vis shareList: shareList direct: direct [
	^ self ffiCall: #( GLXContext glXCreateContext ( Display dpy , XVisualInfo vis , GLXContext shareList , Bool direct ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> createGLXPbufferSGIX_dpy: dpy config: config width: width height: height attrib_list: attrib_list [
	^ self ffiCall: #( GLXPbufferSGIX glXCreateGLXPbufferSGIX ( Display dpy , GLXFBConfigSGIX config , unsigned int width , unsigned int height , int* attrib_list ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> createGLXPixmapMESA_dpy: dpy visual: visual pixmap: pixmap cmap: cmap [
	^ self ffiCall: #( GLXPixmap glXCreateGLXPixmapMESA ( Display dpy , XVisualInfo visual , Pixmap pixmap , Colormap cmap ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> createGLXPixmapWithConfigSGIX_dpy: dpy config: config pixmap: pixmap [
	^ self ffiCall: #( GLXPixmap glXCreateGLXPixmapWithConfigSGIX ( Display dpy , GLXFBConfigSGIX config , Pixmap pixmap ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> createGLXPixmap_dpy: dpy visual: visual pixmap: pixmap [
	^ self ffiCall: #( GLXPixmap glXCreateGLXPixmap ( Display dpy , XVisualInfo visual , Pixmap pixmap ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> createGLXVideoSourceSGIX_display: display screen: screen server: server path: path nodeClass: nodeClass drainNode: drainNode [
	^ self ffiCall: #( GLXVideoSourceSGIX glXCreateGLXVideoSourceSGIX ( Display display , int screen , VLServer server , VLPath path , int nodeClass , VLNode drainNode ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> createNewContext_dpy: dpy config: config render_type: render_type share_list: share_list direct: direct [
	^ self ffiCall: #( GLXContext glXCreateNewContext ( Display dpy , GLXFBConfig config , int render_type , GLXContext share_list , Bool direct ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> createPbuffer_dpy: dpy config: config attrib_list: attrib_list [
	^ self ffiCall: #( GLXPbuffer glXCreatePbuffer ( Display dpy , GLXFBConfig config , int* attrib_list ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> createPixmap_dpy: dpy config: config pixmap: pixmap attrib_list: attrib_list [
	^ self ffiCall: #( GLXPixmap glXCreatePixmap ( Display dpy , GLXFBConfig config , Pixmap pixmap , int* attrib_list ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> createWindow_dpy: dpy config: config win: win attrib_list: attrib_list [
	^ self ffiCall: #( GLXWindow glXCreateWindow ( Display dpy , GLXFBConfig config , Window win , int* attrib_list ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> cushionSGI_dpy: dpy window: window cushion: cushion [
	^ self ffiCall: #( void glXCushionSGI ( Display dpy , Window window , float cushion ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> delayBeforeSwapNV_dpy: dpy drawable: drawable seconds: seconds [
	^ self ffiCall: #( Bool glXDelayBeforeSwapNV ( Display dpy , GLXDrawable drawable , GLfloat seconds ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> deleteAssociatedContextAMD_ctx: ctx [
	^ self ffiCall: #( Bool glXDeleteAssociatedContextAMD ( GLXContext ctx ) ) options: #(+optIndirectCall)
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
	^ self ffiCall: #( GLXVideoCaptureDeviceNV glXEnumerateVideoCaptureDevicesNV ( Display dpy , int screen , int* nelements ) ) options: #(+optIndirectCall)
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
UFFIOpenGLX >> getContextIDEXT_context: context [
	^ self ffiCall: #( GLXContextID glXGetContextIDEXT ( GLXContext context ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> getCurrentAssociatedContextAMD [
	^ self ffiCall: #( GLXContext glXGetCurrentAssociatedContextAMD ( ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> getCurrentContext [
	^ self ffiCall: #( GLXContext glXGetCurrentContext ( ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> getCurrentDisplay [
	^ self ffiCall: #( Display glXGetCurrentDisplay ( ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> getCurrentDisplayEXT [
	^ self ffiCall: #( Display glXGetCurrentDisplayEXT ( ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> getCurrentDrawable [
	^ self ffiCall: #( GLXDrawable glXGetCurrentDrawable ( ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> getCurrentReadDrawable [
	^ self ffiCall: #( GLXDrawable glXGetCurrentReadDrawable ( ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> getCurrentReadDrawableSGI [
	^ self ffiCall: #( GLXDrawable glXGetCurrentReadDrawableSGI ( ) ) options: #(+optIndirectCall)
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
UFFIOpenGLX >> getFBConfigFromVisualSGIX_dpy: dpy vis: vis [
	^ self ffiCall: #( GLXFBConfigSGIX glXGetFBConfigFromVisualSGIX ( Display dpy , XVisualInfo vis ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> getFBConfigs_dpy: dpy screen: screen nelements: nelements [
	^ self ffiCall: #( GLXFBConfig glXGetFBConfigs ( Display dpy , int screen , int* nelements ) ) options: #(+optIndirectCall)
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
UFFIOpenGLX >> getMscRateOML_dpy: dpy drawable: drawable numerator: numerator denominator: denominator [
	^ self ffiCall: #( Bool glXGetMscRateOML ( Display dpy , GLXDrawable drawable , int32_t numerator , int32_t denominator ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> getProcAddressARB_procName: procName [
	^ self ffiCall: #( __GLXextFuncPtr glXGetProcAddressARB ( GLubyte procName ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> getProcAddress_procName: procName [
	^ self ffiCall: #( __GLXextFuncPtr glXGetProcAddress ( GLubyte procName ) ) options: #(+optIndirectCall)
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
UFFIOpenGLX >> getSyncValuesOML_dpy: dpy drawable: drawable ust: ust msc: msc sbc: sbc [
	^ self ffiCall: #( Bool glXGetSyncValuesOML ( Display dpy , GLXDrawable drawable , int64_t ust , int64_t msc , int64_t sbc ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> getTransparentIndexSUN_dpy: dpy overlay: overlay underlay: underlay pTransparentIndex: pTransparentIndex [
	^ self ffiCall: #( Status glXGetTransparentIndexSUN ( Display dpy , Window overlay , Window underlay , long* pTransparentIndex ) ) options: #(+optIndirectCall)
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
	^ self ffiCall: #( XVisualInfo glXGetVisualFromFBConfigSGIX ( Display dpy , GLXFBConfigSGIX config ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> getVisualFromFBConfig_dpy: dpy config: config [
	^ self ffiCall: #( XVisualInfo glXGetVisualFromFBConfig ( Display dpy , GLXFBConfig config ) ) options: #(+optIndirectCall)
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
UFFIOpenGLX >> importContextEXT_dpy: dpy contextID: contextID [
	^ self ffiCall: #( GLXContext glXImportContextEXT ( Display dpy , GLXContextID contextID ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> isDirect_dpy: dpy ctx: ctx [
	^ self ffiCall: #( Bool glXIsDirect ( Display dpy , GLXContext ctx ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> joinSwapGroupNV_dpy: dpy drawable: drawable group: group [
	^ self ffiCall: #( Bool glXJoinSwapGroupNV ( Display dpy , GLXDrawable drawable , GLuint group ) ) options: #(+optIndirectCall)
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
UFFIOpenGLX >> makeAssociatedContextCurrentAMD_ctx: ctx [
	^ self ffiCall: #( Bool glXMakeAssociatedContextCurrentAMD ( GLXContext ctx ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> makeContextCurrent_dpy: dpy draw: draw read: read ctx: ctx [
	^ self ffiCall: #( Bool glXMakeContextCurrent ( Display dpy , GLXDrawable draw , GLXDrawable read , GLXContext ctx ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> makeCurrentReadSGI_dpy: dpy draw: draw read: read ctx: ctx [
	^ self ffiCall: #( Bool glXMakeCurrentReadSGI ( Display dpy , GLXDrawable draw , GLXDrawable read , GLXContext ctx ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> makeCurrent_dpy: dpy drawable: drawable ctx: ctx [
	^ self ffiCall: #( Bool glXMakeCurrent ( Display dpy , GLXDrawable drawable , GLXContext ctx ) ) options: #(+optIndirectCall)
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
UFFIOpenGLX >> queryCurrentRendererIntegerMESA_attribute: attribute value: value [
	^ self ffiCall: #( Bool glXQueryCurrentRendererIntegerMESA ( int attribute , unsigned int* value ) ) options: #(+optIndirectCall)
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
UFFIOpenGLX >> queryExtension_dpy: dpy errorb: errorb event: event [
	^ self ffiCall: #( Bool glXQueryExtension ( Display dpy , int* errorb , int* event ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> queryExtensionsString_dpy: dpy screen: screen [
	^ self ffiCall: #( char* glXQueryExtensionsString ( Display dpy , int screen ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> queryFrameCountNV_dpy: dpy screen: screen count: count [
	^ self ffiCall: #( Bool glXQueryFrameCountNV ( Display dpy , int screen , GLuint count ) ) options: #(+optIndirectCall)
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
	^ self ffiCall: #( GLXHyperpipeConfigSGIX glXQueryHyperpipeConfigSGIX ( Display dpy , int hpId , int* npipes ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> queryHyperpipeNetworkSGIX_dpy: dpy npipes: npipes [
	^ self ffiCall: #( GLXHyperpipeNetworkSGIX glXQueryHyperpipeNetworkSGIX ( Display dpy , int* npipes ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> queryMaxSwapBarriersSGIX_dpy: dpy screen: screen max: max [
	^ self ffiCall: #( Bool glXQueryMaxSwapBarriersSGIX ( Display dpy , int screen , int* max ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> queryMaxSwapGroupsNV_dpy: dpy screen: screen maxGroups: maxGroups maxBarriers: maxBarriers [
	^ self ffiCall: #( Bool glXQueryMaxSwapGroupsNV ( Display dpy , int screen , GLuint maxGroups , GLuint maxBarriers ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> queryRendererIntegerMESA_dpy: dpy screen: screen renderer: renderer attribute: attribute value: value [
	^ self ffiCall: #( Bool glXQueryRendererIntegerMESA ( Display dpy , int screen , int renderer , int attribute , unsigned int* value ) ) options: #(+optIndirectCall)
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
UFFIOpenGLX >> querySwapGroupNV_dpy: dpy drawable: drawable group: group barrier: barrier [
	^ self ffiCall: #( Bool glXQuerySwapGroupNV ( Display dpy , GLXDrawable drawable , GLuint group , GLuint barrier ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> queryVersion_dpy: dpy maj: maj min: min [
	^ self ffiCall: #( Bool glXQueryVersion ( Display dpy , int* maj , int* min ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> queryVideoCaptureDeviceNV_dpy: dpy device: device attribute: attribute value: value [
	^ self ffiCall: #( int glXQueryVideoCaptureDeviceNV ( Display dpy , GLXVideoCaptureDeviceNV device , int attribute , int* value ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> releaseBuffersMESA_dpy: dpy drawable: drawable [
	^ self ffiCall: #( Bool glXReleaseBuffersMESA ( Display dpy , GLXDrawable drawable ) ) options: #(+optIndirectCall)
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
UFFIOpenGLX >> resetFrameCountNV_dpy: dpy screen: screen [
	^ self ffiCall: #( Bool glXResetFrameCountNV ( Display dpy , int screen ) ) options: #(+optIndirectCall)
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
UFFIOpenGLX >> set3DfxModeMESA_mode: mode [
	^ self ffiCall: #( Bool glXSet3DfxModeMESA ( int mode ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> swapBuffersMscOML_dpy: dpy drawable: drawable target_msc: target_msc divisor: divisor remainder: remainder [
	^ self ffiCall: #( int64_t glXSwapBuffersMscOML ( Display dpy , GLXDrawable drawable , int64_t target_msc , int64_t divisor , int64_t remainder ) ) options: #(+optIndirectCall)
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
UFFIOpenGLX >> waitForMscOML_dpy: dpy drawable: drawable target_msc: target_msc divisor: divisor remainder: remainder ust: ust msc: msc sbc: sbc [
	^ self ffiCall: #( Bool glXWaitForMscOML ( Display dpy , GLXDrawable drawable , int64_t target_msc , int64_t divisor , int64_t remainder , int64_t ust , int64_t msc , int64_t sbc ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenGLX >> waitForSbcOML_dpy: dpy drawable: drawable target_sbc: target_sbc ust: ust msc: msc sbc: sbc [
	^ self ffiCall: #( Bool glXWaitForSbcOML ( Display dpy , GLXDrawable drawable , int64_t target_sbc , int64_t ust , int64_t msc , int64_t sbc ) ) options: #(+optIndirectCall)
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
