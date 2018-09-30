Class {
	#name : #BaselineOfUFFIOpenGL,
	#superclass : #BaselineOf,
	#category : #BaselineOfUFFIOpenGL
}

{ #category : #baselines }
BaselineOfUFFIOpenGL >> baseline: spec [
	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/ronsaldo/UFFIOpenGL/main/'.
		spec 
			package: #'UFFIOpenGL-Core';
			package: #'UFFIOpenGL-Context' with: [
				spec requires: #(#'UFFIOpenGL-Core' ). ];
			package: #'UFFIOpenGL-EGL' with: [
				spec requires: #(#'UFFIOpenGL-Core' ). ];
			package: #'UFFIOpenGL-Windows' with: [
				spec requires: #(#'UFFIOpenGL-Core' 'OSWindows' ). ];
			package: #'UFFIOpenGL-X11' with: [
				spec requires: #(#'UFFIOpenGL-Core' ). ];
			package: #'UFFIOpenGL-Generator' with: [
				spec requires: #(#'UFFIOpenGL-Core' #'UFFIOpenGL-EGL' #'UFFIOpenGL-Windows' #'UFFIOpenGL-X11' ). ].
		spec group: 'default' with: #(#'UFFIOpenGL-Core' #'UFFIOpenGL-Context'). ].

]
