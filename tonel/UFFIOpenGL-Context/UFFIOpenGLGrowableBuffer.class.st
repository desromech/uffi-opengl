"
Growable binary buffer. For filling vertex buffer objects and index buffer objects.
"
Class {
	#name : #UFFIOpenGLGrowableBuffer,
	#superclass : #Object,
	#instVars : [
		'buffer',
		'size'
	],
	#category : #'UFFIOpenGL-Context-Utils'
}

{ #category : #accessing }
UFFIOpenGLGrowableBuffer >> buffer [
	^ buffer
]

{ #category : #accessing }
UFFIOpenGLGrowableBuffer >> capacity [
	^ buffer size
]

{ #category : #accessing }
UFFIOpenGLGrowableBuffer >> data [
	^ buffer copyFrom: 1 to: size
]

{ #category : #removing }
UFFIOpenGLGrowableBuffer >> destroyCapacity [
	buffer := ByteArray new: 16.
	size := 0.
]

{ #category : #private }
UFFIOpenGLGrowableBuffer >> ensureCapacityFor: elementSize [
	size + elementSize > buffer size ifTrue: [ self increaseCapacity. ]
	
]

{ #category : #private }
UFFIOpenGLGrowableBuffer >> increaseCapacity [
	| newCapacity newBuffer |
	newCapacity := self capacity * 2 max: 16.
	newBuffer := ByteArray new: newCapacity.
	
	1 to: size do: [ :i |
		newBuffer at: i put: (buffer at: i)
	].

	buffer := newBuffer
]

{ #category : #initialization }
UFFIOpenGLGrowableBuffer >> initialize [
	self destroyCapacity.
]

{ #category : #adding }
UFFIOpenGLGrowableBuffer >> putColor4F: aColor [
	self
		putFloat: aColor red;
		putFloat: aColor green;
		putFloat: aColor blue;
		putFloat: aColor alpha
]

{ #category : #adding }
UFFIOpenGLGrowableBuffer >> putFloat: value [
	self ensureCapacityFor: 4.
	buffer floatAt: size + 1 put: value.
	size := size + 4
	
]

{ #category : #adding }
UFFIOpenGLGrowableBuffer >> putGrowableBuffer: growableBuffer [
	| bufferToAdd |
	self ensureCapacityFor: growableBuffer size.
	bufferToAdd := growableBuffer buffer.
	1 to: growableBuffer size do: [ :i |
		buffer at: size + i - 1 put: (bufferToAdd at: i)
	]
]

{ #category : #adding }
UFFIOpenGLGrowableBuffer >> putInt16: value [
	self ensureCapacityFor: 2.
	buffer signedShortAt: size + 1 put: value.
	size := size + 2
	
]

{ #category : #adding }
UFFIOpenGLGrowableBuffer >> putInt32: value [
	self ensureCapacityFor: 4.
	buffer signedLongAt: size + 1 put: value.
	size := size + 4
	
]

{ #category : #adding }
UFFIOpenGLGrowableBuffer >> putPoint2F: aPoint [
	self
		putFloat: aPoint x asFloat;
		putFloat: aPoint y asFloat
]

{ #category : #adding }
UFFIOpenGLGrowableBuffer >> putUInt16: value [
	self ensureCapacityFor: 2.
	buffer unsignedShortAt: size + 1 put: value.
	size := size + 2
	
]

{ #category : #adding }
UFFIOpenGLGrowableBuffer >> putUInt32: value [
	self ensureCapacityFor: 4.
	buffer unsignedLongAt: size + 1 put: value.
	size := size + 4
	
]

{ #category : #removing }
UFFIOpenGLGrowableBuffer >> removeAll [
	size := 0.
]

{ #category : #accessing }
UFFIOpenGLGrowableBuffer >> size [
	^ size
]
