Class {
	#name : #UFFIOpenEGL,
	#superclass : #Object,
	#pools : [
		'UFFIOpenEGLTypes',
		'UFFIOpenGLTypes'
	],
	#category : #'UFFIOpenGL-EGL'
}

{ #category : #'generated bindings' }
UFFIOpenEGL >> bindAPI: api [
	^ self ffiCall: #( EGLBoolean eglBindAPI ( EGLenum api ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> bindTexImage_dpy: dpy surface: surface buffer: buffer [
	^ self ffiCall: #( EGLBoolean eglBindTexImage ( EGLDisplay dpy , EGLSurface surface , EGLint buffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> chooseConfig_dpy: dpy attrib_list: attrib_list configs: configs config_size: config_size num_config: num_config [
	^ self ffiCall: #( EGLBoolean eglChooseConfig ( EGLDisplay dpy , EGLint* attrib_list , EGLConfig* configs , EGLint config_size , EGLint* num_config ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> clientWaitSyncKHR_dpy: dpy sync: sync flags: flags timeout: timeout [
	^ self ffiCall: #( EGLint eglClientWaitSyncKHR ( EGLDisplay dpy , EGLSyncKHR sync , EGLint flags , EGLTimeKHR timeout ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> clientWaitSyncNV_sync: sync flags: flags timeout: timeout [
	^ self ffiCall: #( EGLint eglClientWaitSyncNV ( EGLSyncNV sync , EGLint flags , EGLTimeNV timeout ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> clientWaitSync_dpy: dpy sync: sync flags: flags timeout: timeout [
	^ self ffiCall: #( EGLint eglClientWaitSync ( EGLDisplay dpy , EGLSync sync , EGLint flags , EGLTime timeout ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> copyBuffers_dpy: dpy surface: surface target: target [
	^ self ffiCall: #( EGLBoolean eglCopyBuffers ( EGLDisplay dpy , EGLSurface surface , EGLNativePixmapType target ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> createContext_dpy: dpy config: config share_context: share_context attrib_list: attrib_list [
	^ self ffiCall: #( EGLContext eglCreateContext ( EGLDisplay dpy , EGLConfig config , EGLContext share_context , EGLint* attrib_list ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> createDRMImageMESA_dpy: dpy attrib_list: attrib_list [
	^ self ffiCall: #( EGLImageKHR eglCreateDRMImageMESA ( EGLDisplay dpy , EGLint* attrib_list ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> createFenceSyncNV_dpy: dpy condition: condition attrib_list: attrib_list [
	^ self ffiCall: #( EGLSyncNV eglCreateFenceSyncNV ( EGLDisplay dpy , EGLenum condition , EGLint* attrib_list ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> createImageKHR_dpy: dpy ctx: ctx target: target buffer: buffer attrib_list: attrib_list [
	^ self ffiCall: #( EGLImageKHR eglCreateImageKHR ( EGLDisplay dpy , EGLContext ctx , EGLenum target , EGLClientBuffer buffer , EGLint* attrib_list ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> createImage_dpy: dpy ctx: ctx target: target buffer: buffer attrib_list: attrib_list [
	^ self ffiCall: #( EGLImage eglCreateImage ( EGLDisplay dpy , EGLContext ctx , EGLenum target , EGLClientBuffer buffer , EGLAttrib* attrib_list ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> createPbufferFromClientBuffer_dpy: dpy buftype: buftype buffer: buffer config: config attrib_list: attrib_list [
	^ self ffiCall: #( EGLSurface eglCreatePbufferFromClientBuffer ( EGLDisplay dpy , EGLenum buftype , EGLClientBuffer buffer , EGLConfig config , EGLint* attrib_list ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> createPbufferSurface_dpy: dpy config: config attrib_list: attrib_list [
	^ self ffiCall: #( EGLSurface eglCreatePbufferSurface ( EGLDisplay dpy , EGLConfig config , EGLint* attrib_list ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> createPixmapSurfaceHI_dpy: dpy config: config pixmap: pixmap [
	^ self ffiCall: #( EGLSurface eglCreatePixmapSurfaceHI ( EGLDisplay dpy , EGLConfig config , struct EGLClientPixmapHI* pixmap ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> createPixmapSurface_dpy: dpy config: config pixmap: pixmap attrib_list: attrib_list [
	^ self ffiCall: #( EGLSurface eglCreatePixmapSurface ( EGLDisplay dpy , EGLConfig config , EGLNativePixmapType pixmap , EGLint* attrib_list ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> createPlatformPixmapSurfaceEXT_dpy: dpy config: config native_pixmap: native_pixmap attrib_list: attrib_list [
	^ self ffiCall: #( EGLSurface eglCreatePlatformPixmapSurfaceEXT ( EGLDisplay dpy , EGLConfig config , void* native_pixmap , EGLint* attrib_list ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> createPlatformPixmapSurface_dpy: dpy config: config native_pixmap: native_pixmap attrib_list: attrib_list [
	^ self ffiCall: #( EGLSurface eglCreatePlatformPixmapSurface ( EGLDisplay dpy , EGLConfig config , void* native_pixmap , EGLAttrib* attrib_list ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> createPlatformWindowSurfaceEXT_dpy: dpy config: config native_window: native_window attrib_list: attrib_list [
	^ self ffiCall: #( EGLSurface eglCreatePlatformWindowSurfaceEXT ( EGLDisplay dpy , EGLConfig config , void* native_window , EGLint* attrib_list ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> createPlatformWindowSurface_dpy: dpy config: config native_window: native_window attrib_list: attrib_list [
	^ self ffiCall: #( EGLSurface eglCreatePlatformWindowSurface ( EGLDisplay dpy , EGLConfig config , void* native_window , EGLAttrib* attrib_list ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> createStreamFromFileDescriptorKHR_dpy: dpy file_descriptor: file_descriptor [
	^ self ffiCall: #( EGLStreamKHR eglCreateStreamFromFileDescriptorKHR ( EGLDisplay dpy , EGLNativeFileDescriptorKHR file_descriptor ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> createStreamKHR_dpy: dpy attrib_list: attrib_list [
	^ self ffiCall: #( EGLStreamKHR eglCreateStreamKHR ( EGLDisplay dpy , EGLint* attrib_list ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> createStreamProducerSurfaceKHR_dpy: dpy config: config stream: stream attrib_list: attrib_list [
	^ self ffiCall: #( EGLSurface eglCreateStreamProducerSurfaceKHR ( EGLDisplay dpy , EGLConfig config , EGLStreamKHR stream , EGLint* attrib_list ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> createStreamSyncNV_dpy: dpy stream: stream type: type attrib_list: attrib_list [
	^ self ffiCall: #( EGLSyncKHR eglCreateStreamSyncNV ( EGLDisplay dpy , EGLStreamKHR stream , EGLenum type , EGLint* attrib_list ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> createSync64KHR_dpy: dpy type: type attrib_list: attrib_list [
	^ self ffiCall: #( EGLSyncKHR eglCreateSync64KHR ( EGLDisplay dpy , EGLenum type , EGLAttribKHR* attrib_list ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> createSyncKHR_dpy: dpy type: type attrib_list: attrib_list [
	^ self ffiCall: #( EGLSyncKHR eglCreateSyncKHR ( EGLDisplay dpy , EGLenum type , EGLint* attrib_list ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> createSync_dpy: dpy type: type attrib_list: attrib_list [
	^ self ffiCall: #( EGLSync eglCreateSync ( EGLDisplay dpy , EGLenum type , EGLAttrib* attrib_list ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> createWindowSurface_dpy: dpy config: config win: win attrib_list: attrib_list [
	^ self ffiCall: #( EGLSurface eglCreateWindowSurface ( EGLDisplay dpy , EGLConfig config , EGLNativeWindowType win , EGLint* attrib_list ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> debugMessageControlKHR_callback: callback attrib_list: attrib_list [
	^ self ffiCall: #( EGLint eglDebugMessageControlKHR ( EGLDEBUGPROCKHR callback , EGLAttrib* attrib_list ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> destroyContext_dpy: dpy ctx: ctx [
	^ self ffiCall: #( EGLBoolean eglDestroyContext ( EGLDisplay dpy , EGLContext ctx ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> destroyImageKHR_dpy: dpy image: image [
	^ self ffiCall: #( EGLBoolean eglDestroyImageKHR ( EGLDisplay dpy , EGLImageKHR image ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> destroyImage_dpy: dpy image: image [
	^ self ffiCall: #( EGLBoolean eglDestroyImage ( EGLDisplay dpy , EGLImage image ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> destroyStreamKHR_dpy: dpy stream: stream [
	^ self ffiCall: #( EGLBoolean eglDestroyStreamKHR ( EGLDisplay dpy , EGLStreamKHR stream ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> destroySurface_dpy: dpy surface: surface [
	^ self ffiCall: #( EGLBoolean eglDestroySurface ( EGLDisplay dpy , EGLSurface surface ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> destroySyncKHR_dpy: dpy sync: sync [
	^ self ffiCall: #( EGLBoolean eglDestroySyncKHR ( EGLDisplay dpy , EGLSyncKHR sync ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> destroySyncNV: sync [
	^ self ffiCall: #( EGLBoolean eglDestroySyncNV ( EGLSyncNV sync ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> destroySync_dpy: dpy sync: sync [
	^ self ffiCall: #( EGLBoolean eglDestroySync ( EGLDisplay dpy , EGLSync sync ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> dupNativeFenceFDANDROID_dpy: dpy sync: sync [
	^ self ffiCall: #( EGLint eglDupNativeFenceFDANDROID ( EGLDisplay dpy , EGLSyncKHR sync ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> exportDMABUFImageMESA_dpy: dpy image: image fds: fds strides: strides offsets: offsets [
	^ self ffiCall: #( EGLBoolean eglExportDMABUFImageMESA ( EGLDisplay dpy , EGLImageKHR image , int* fds , EGLint* strides , EGLint* offsets ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> exportDMABUFImageQueryMESA_dpy: dpy image: image fourcc: fourcc num_planes: num_planes modifiers: modifiers [
	^ self ffiCall: #( EGLBoolean eglExportDMABUFImageQueryMESA ( EGLDisplay dpy , EGLImageKHR image , int* fourcc , int* num_planes , EGLuint64KHR* modifiers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> exportDRMImageMESA_dpy: dpy image: image name: name handle: handle stride: stride [
	^ self ffiCall: #( EGLBoolean eglExportDRMImageMESA ( EGLDisplay dpy , EGLImageKHR image , EGLint* name , EGLint* handle , EGLint* stride ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> fenceNV: sync [
	^ self ffiCall: #( EGLBoolean eglFenceNV ( EGLSyncNV sync ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> getConfigAttrib_dpy: dpy config: config attribute: attribute value: value [
	^ self ffiCall: #( EGLBoolean eglGetConfigAttrib ( EGLDisplay dpy , EGLConfig config , EGLint attribute , EGLint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> getConfigs_dpy: dpy configs: configs config_size: config_size num_config: num_config [
	^ self ffiCall: #( EGLBoolean eglGetConfigs ( EGLDisplay dpy , EGLConfig* configs , EGLint config_size , EGLint* num_config ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> getCurrentContext [
	^ self ffiCall: #( EGLContext eglGetCurrentContext ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> getCurrentDisplay [
	^ self ffiCall: #( EGLDisplay eglGetCurrentDisplay ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> getCurrentSurface: readdraw [
	^ self ffiCall: #( EGLSurface eglGetCurrentSurface ( EGLint readdraw ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> getDisplay: display_id [
	^ self ffiCall: #( EGLDisplay eglGetDisplay ( EGLNativeDisplayType display_id ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> getError [
	^ self ffiCall: #( EGLint eglGetError ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> getOutputLayersEXT_dpy: dpy attrib_list: attrib_list layers: layers max_layers: max_layers num_layers: num_layers [
	^ self ffiCall: #( EGLBoolean eglGetOutputLayersEXT ( EGLDisplay dpy , EGLAttrib* attrib_list , EGLOutputLayerEXT* layers , EGLint max_layers , EGLint* num_layers ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> getOutputPortsEXT_dpy: dpy attrib_list: attrib_list ports: ports max_ports: max_ports num_ports: num_ports [
	^ self ffiCall: #( EGLBoolean eglGetOutputPortsEXT ( EGLDisplay dpy , EGLAttrib* attrib_list , EGLOutputPortEXT* ports , EGLint max_ports , EGLint* num_ports ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> getPlatformDisplayEXT_platform: platform native_display: native_display attrib_list: attrib_list [
	^ self ffiCall: #( EGLDisplay eglGetPlatformDisplayEXT ( EGLenum platform , void* native_display , EGLint* attrib_list ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> getPlatformDisplay_platform: platform native_display: native_display attrib_list: attrib_list [
	^ self ffiCall: #( EGLDisplay eglGetPlatformDisplay ( EGLenum platform , void* native_display , EGLAttrib* attrib_list ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> getProcAddress: procname [
	^ self ffiCall: #( __eglMustCastToProperFunctionPointerType eglGetProcAddress ( char* procname ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> getStreamFileDescriptorKHR_dpy: dpy stream: stream [
	^ self ffiCall: #( EGLNativeFileDescriptorKHR eglGetStreamFileDescriptorKHR ( EGLDisplay dpy , EGLStreamKHR stream ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> getSyncAttribKHR_dpy: dpy sync: sync attribute: attribute value: value [
	^ self ffiCall: #( EGLBoolean eglGetSyncAttribKHR ( EGLDisplay dpy , EGLSyncKHR sync , EGLint attribute , EGLint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> getSyncAttribNV_sync: sync attribute: attribute value: value [
	^ self ffiCall: #( EGLBoolean eglGetSyncAttribNV ( EGLSyncNV sync , EGLint attribute , EGLint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> getSyncAttrib_dpy: dpy sync: sync attribute: attribute value: value [
	^ self ffiCall: #( EGLBoolean eglGetSyncAttrib ( EGLDisplay dpy , EGLSync sync , EGLint attribute , EGLAttrib* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> getSystemTimeFrequencyNV [
	^ self ffiCall: #( EGLuint64NV eglGetSystemTimeFrequencyNV ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> getSystemTimeNV [
	^ self ffiCall: #( EGLuint64NV eglGetSystemTimeNV ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> initialize_dpy: dpy major: major minor: minor [
	^ self ffiCall: #( EGLBoolean eglInitialize ( EGLDisplay dpy , EGLint* major , EGLint* minor ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> labelObjectKHR_display: display objectType: objectType object: object label: label [
	^ self ffiCall: #( EGLint eglLabelObjectKHR ( EGLDisplay display , EGLenum objectType , EGLObjectKHR object , EGLLabelKHR label ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> lockSurfaceKHR_dpy: dpy surface: surface attrib_list: attrib_list [
	^ self ffiCall: #( EGLBoolean eglLockSurfaceKHR ( EGLDisplay dpy , EGLSurface surface , EGLint* attrib_list ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> makeCurrent_dpy: dpy draw: draw read: read ctx: ctx [
	^ self ffiCall: #( EGLBoolean eglMakeCurrent ( EGLDisplay dpy , EGLSurface draw , EGLSurface read , EGLContext ctx ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> outputLayerAttribEXT_dpy: dpy layer: layer attribute: attribute value: value [
	^ self ffiCall: #( EGLBoolean eglOutputLayerAttribEXT ( EGLDisplay dpy , EGLOutputLayerEXT layer , EGLint attribute , EGLAttrib value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> outputPortAttribEXT_dpy: dpy port: port attribute: attribute value: value [
	^ self ffiCall: #( EGLBoolean eglOutputPortAttribEXT ( EGLDisplay dpy , EGLOutputPortEXT port , EGLint attribute , EGLAttrib value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> postSubBufferNV_dpy: dpy surface: surface x: x y: y width: width height: height [
	^ self ffiCall: #( EGLBoolean eglPostSubBufferNV ( EGLDisplay dpy , EGLSurface surface , EGLint x , EGLint y , EGLint width , EGLint height ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> queryAPI [
	^ self ffiCall: #( EGLenum eglQueryAPI ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> queryContext_dpy: dpy ctx: ctx attribute: attribute value: value [
	^ self ffiCall: #( EGLBoolean eglQueryContext ( EGLDisplay dpy , EGLContext ctx , EGLint attribute , EGLint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> queryDebugKHR_attribute: attribute value: value [
	^ self ffiCall: #( EGLBoolean eglQueryDebugKHR ( EGLint attribute , EGLAttrib* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> queryDeviceAttribEXT_device: device attribute: attribute value: value [
	^ self ffiCall: #( EGLBoolean eglQueryDeviceAttribEXT ( EGLDeviceEXT device , EGLint attribute , EGLAttrib* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> queryDeviceStringEXT_device: device name: name [
	^ self ffiCall: #( char* eglQueryDeviceStringEXT ( EGLDeviceEXT device , EGLint name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> queryDevicesEXT_max_devices: max_devices devices: devices num_devices: num_devices [
	^ self ffiCall: #( EGLBoolean eglQueryDevicesEXT ( EGLint max_devices , EGLDeviceEXT* devices , EGLint* num_devices ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> queryDisplayAttribEXT_dpy: dpy attribute: attribute value: value [
	^ self ffiCall: #( EGLBoolean eglQueryDisplayAttribEXT ( EGLDisplay dpy , EGLint attribute , EGLAttrib* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> queryDisplayAttribNV_dpy: dpy attribute: attribute value: value [
	^ self ffiCall: #( EGLBoolean eglQueryDisplayAttribNV ( EGLDisplay dpy , EGLint attribute , EGLAttrib* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> queryNativeDisplayNV_dpy: dpy display_id: display_id [
	^ self ffiCall: #( EGLBoolean eglQueryNativeDisplayNV ( EGLDisplay dpy , EGLNativeDisplayType* display_id ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> queryNativePixmapNV_dpy: dpy surf: surf pixmap: pixmap [
	^ self ffiCall: #( EGLBoolean eglQueryNativePixmapNV ( EGLDisplay dpy , EGLSurface surf , EGLNativePixmapType* pixmap ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> queryNativeWindowNV_dpy: dpy surf: surf window: window [
	^ self ffiCall: #( EGLBoolean eglQueryNativeWindowNV ( EGLDisplay dpy , EGLSurface surf , EGLNativeWindowType* window ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> queryOutputLayerAttribEXT_dpy: dpy layer: layer attribute: attribute value: value [
	^ self ffiCall: #( EGLBoolean eglQueryOutputLayerAttribEXT ( EGLDisplay dpy , EGLOutputLayerEXT layer , EGLint attribute , EGLAttrib* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> queryOutputLayerStringEXT_dpy: dpy layer: layer name: name [
	^ self ffiCall: #( char* eglQueryOutputLayerStringEXT ( EGLDisplay dpy , EGLOutputLayerEXT layer , EGLint name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> queryOutputPortAttribEXT_dpy: dpy port: port attribute: attribute value: value [
	^ self ffiCall: #( EGLBoolean eglQueryOutputPortAttribEXT ( EGLDisplay dpy , EGLOutputPortEXT port , EGLint attribute , EGLAttrib* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> queryOutputPortStringEXT_dpy: dpy port: port name: name [
	^ self ffiCall: #( char* eglQueryOutputPortStringEXT ( EGLDisplay dpy , EGLOutputPortEXT port , EGLint name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> queryStreamKHR_dpy: dpy stream: stream attribute: attribute value: value [
	^ self ffiCall: #( EGLBoolean eglQueryStreamKHR ( EGLDisplay dpy , EGLStreamKHR stream , EGLenum attribute , EGLint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> queryStreamMetadataNV_dpy: dpy stream: stream name: name n: n offset: offset size: size data: data [
	^ self ffiCall: #( EGLBoolean eglQueryStreamMetadataNV ( EGLDisplay dpy , EGLStreamKHR stream , EGLenum name , EGLint n , EGLint offset , EGLint size , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> queryStreamTimeKHR_dpy: dpy stream: stream attribute: attribute value: value [
	^ self ffiCall: #( EGLBoolean eglQueryStreamTimeKHR ( EGLDisplay dpy , EGLStreamKHR stream , EGLenum attribute , EGLTimeKHR* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> queryStreamu64KHR_dpy: dpy stream: stream attribute: attribute value: value [
	^ self ffiCall: #( EGLBoolean eglQueryStreamu64KHR ( EGLDisplay dpy , EGLStreamKHR stream , EGLenum attribute , EGLuint64KHR* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> queryString_dpy: dpy name: name [
	^ self ffiCall: #( char* eglQueryString ( EGLDisplay dpy , EGLint name ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> querySurface64KHR_dpy: dpy surface: surface attribute: attribute value: value [
	^ self ffiCall: #( EGLBoolean eglQuerySurface64KHR ( EGLDisplay dpy , EGLSurface surface , EGLint attribute , EGLAttribKHR* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> querySurfacePointerANGLE_dpy: dpy surface: surface attribute: attribute value: value [
	^ self ffiCall: #( EGLBoolean eglQuerySurfacePointerANGLE ( EGLDisplay dpy , EGLSurface surface , EGLint attribute , void** value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> querySurface_dpy: dpy surface: surface attribute: attribute value: value [
	^ self ffiCall: #( EGLBoolean eglQuerySurface ( EGLDisplay dpy , EGLSurface surface , EGLint attribute , EGLint* value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> releaseTexImage_dpy: dpy surface: surface buffer: buffer [
	^ self ffiCall: #( EGLBoolean eglReleaseTexImage ( EGLDisplay dpy , EGLSurface surface , EGLint buffer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> releaseThread [
	^ self ffiCall: #( EGLBoolean eglReleaseThread ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> setBlobCacheFuncsANDROID_dpy: dpy set: set get: get [
	^ self ffiCall: #( void eglSetBlobCacheFuncsANDROID ( EGLDisplay dpy , EGLSetBlobFuncANDROID set , EGLGetBlobFuncANDROID get ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> setDamageRegionKHR_dpy: dpy surface: surface rects: rects n_rects: n_rects [
	^ self ffiCall: #( EGLBoolean eglSetDamageRegionKHR ( EGLDisplay dpy , EGLSurface surface , EGLint* rects , EGLint n_rects ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> setStreamMetadataNV_dpy: dpy stream: stream n: n offset: offset size: size data: data [
	^ self ffiCall: #( EGLBoolean eglSetStreamMetadataNV ( EGLDisplay dpy , EGLStreamKHR stream , EGLint n , EGLint offset , EGLint size , void* data ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> signalSyncKHR_dpy: dpy sync: sync mode: mode [
	^ self ffiCall: #( EGLBoolean eglSignalSyncKHR ( EGLDisplay dpy , EGLSyncKHR sync , EGLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> signalSyncNV_sync: sync mode: mode [
	^ self ffiCall: #( EGLBoolean eglSignalSyncNV ( EGLSyncNV sync , EGLenum mode ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> streamAttribKHR_dpy: dpy stream: stream attribute: attribute value: value [
	^ self ffiCall: #( EGLBoolean eglStreamAttribKHR ( EGLDisplay dpy , EGLStreamKHR stream , EGLenum attribute , EGLint value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> streamConsumerAcquireKHR_dpy: dpy stream: stream [
	^ self ffiCall: #( EGLBoolean eglStreamConsumerAcquireKHR ( EGLDisplay dpy , EGLStreamKHR stream ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> streamConsumerGLTextureExternalKHR_dpy: dpy stream: stream [
	^ self ffiCall: #( EGLBoolean eglStreamConsumerGLTextureExternalKHR ( EGLDisplay dpy , EGLStreamKHR stream ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> streamConsumerOutputEXT_dpy: dpy stream: stream layer: layer [
	^ self ffiCall: #( EGLBoolean eglStreamConsumerOutputEXT ( EGLDisplay dpy , EGLStreamKHR stream , EGLOutputLayerEXT layer ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> streamConsumerReleaseKHR_dpy: dpy stream: stream [
	^ self ffiCall: #( EGLBoolean eglStreamConsumerReleaseKHR ( EGLDisplay dpy , EGLStreamKHR stream ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> surfaceAttrib_dpy: dpy surface: surface attribute: attribute value: value [
	^ self ffiCall: #( EGLBoolean eglSurfaceAttrib ( EGLDisplay dpy , EGLSurface surface , EGLint attribute , EGLint value ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> swapBuffersRegion2NOK_dpy: dpy surface: surface numRects: numRects rects: rects [
	^ self ffiCall: #( EGLBoolean eglSwapBuffersRegion2NOK ( EGLDisplay dpy , EGLSurface surface , EGLint numRects , EGLint* rects ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> swapBuffersRegionNOK_dpy: dpy surface: surface numRects: numRects rects: rects [
	^ self ffiCall: #( EGLBoolean eglSwapBuffersRegionNOK ( EGLDisplay dpy , EGLSurface surface , EGLint numRects , EGLint* rects ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> swapBuffersWithDamageEXT_dpy: dpy surface: surface rects: rects n_rects: n_rects [
	^ self ffiCall: #( EGLBoolean eglSwapBuffersWithDamageEXT ( EGLDisplay dpy , EGLSurface surface , EGLint* rects , EGLint n_rects ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> swapBuffersWithDamageKHR_dpy: dpy surface: surface rects: rects n_rects: n_rects [
	^ self ffiCall: #( EGLBoolean eglSwapBuffersWithDamageKHR ( EGLDisplay dpy , EGLSurface surface , EGLint* rects , EGLint n_rects ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> swapBuffers_dpy: dpy surface: surface [
	^ self ffiCall: #( EGLBoolean eglSwapBuffers ( EGLDisplay dpy , EGLSurface surface ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> swapInterval_dpy: dpy interval: interval [
	^ self ffiCall: #( EGLBoolean eglSwapInterval ( EGLDisplay dpy , EGLint interval ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> terminate: dpy [
	^ self ffiCall: #( EGLBoolean eglTerminate ( EGLDisplay dpy ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> unlockSurfaceKHR_dpy: dpy surface: surface [
	^ self ffiCall: #( EGLBoolean eglUnlockSurfaceKHR ( EGLDisplay dpy , EGLSurface surface ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> waitClient [
	^ self ffiCall: #( EGLBoolean eglWaitClient ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> waitGL [
	^ self ffiCall: #( EGLBoolean eglWaitGL ( ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> waitNative: engine [
	^ self ffiCall: #( EGLBoolean eglWaitNative ( EGLint engine ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> waitSyncKHR_dpy: dpy sync: sync flags: flags [
	^ self ffiCall: #( EGLint eglWaitSyncKHR ( EGLDisplay dpy , EGLSyncKHR sync , EGLint flags ) ) options: #( +optIndirectCallOpenGL )
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> waitSync_dpy: dpy sync: sync flags: flags [
	^ self ffiCall: #( EGLBoolean eglWaitSync ( EGLDisplay dpy , EGLSync sync , EGLint flags ) ) options: #( +optIndirectCallOpenGL )
]
