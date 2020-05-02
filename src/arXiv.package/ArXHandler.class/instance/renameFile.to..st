private - utilities
renameFile: fromName to: toName
	| fromFile toFile |
	fromFile := fromName asFileReference.
	fromFile exists ifFalse: [ FileDoesNotExistException signal: fromName ].
	toFile := toName asFileReference.
	toFile exists
		ifTrue: [ toFile delete ].
	fromFile renameTo: toName