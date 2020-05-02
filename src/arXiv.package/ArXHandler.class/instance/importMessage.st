activation
importMessage
	| filename file |
	filename := self arguments second.
	(filename endsWith: '.mbox')
		ifFalse: [ ^ false ].
	file := filename asFileReference.
	file exists ifFalse: [ ^ false ].
	self reloadDB.
	self processMessage: file.
	self saveDB