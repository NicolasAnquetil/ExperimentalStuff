activation
checkArguments
	| filename |
	self hasArguments
		ifFalse: [ ^ false ].
	
	filename := self arguments first.
	(filename endsWith: '.mbox')
		ifFalse: [ ^ false ].

	arXivFile := filename asFileReference.
	arXivFile exists
		ifFalse: [ ^ false ].
	^ true