private - utilities
getMboxFile: filename
	| file |
	(filename endsWith: '.mbox')
		ifFalse: [ ^ nil ].
	file := filename asFileReference.
	file exists ifFalse: [ ^ false ].
	^file
