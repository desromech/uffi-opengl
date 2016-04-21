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
UFFIOpenEGL >> queryDeviceStringEXT_device: device name: name [
	^ self ffiCall: #( char* eglQueryDeviceStringEXT ( EGLDeviceEXT device , EGLint name ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> queryOutputLayerStringEXT_dpy: dpy layer: layer name: name [
	^ self ffiCall: #( char* eglQueryOutputLayerStringEXT ( EGLDisplay dpy , EGLOutputLayerEXT layer , EGLint name ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> queryOutputPortStringEXT_dpy: dpy port: port name: name [
	^ self ffiCall: #( char* eglQueryOutputPortStringEXT ( EGLDisplay dpy , EGLOutputPortEXT port , EGLint name ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> queryString_dpy: dpy name: name [
	^ self ffiCall: #( char* eglQueryString ( EGLDisplay dpy , EGLint name ) ) options: #(+optIndirectCall)
]

{ #category : #'generated bindings' }
UFFIOpenEGL >> setBlobCacheFuncsANDROID_dpy: dpy set: set get: get [
	^ self ffiCall: #( void eglSetBlobCacheFuncsANDROID ( EGLDisplay dpy , EGLSetBlobFuncANDROID set , EGLGetBlobFuncANDROID get ) ) options: #(+optIndirectCall)
]
