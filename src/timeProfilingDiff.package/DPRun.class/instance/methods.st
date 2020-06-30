opening
methods
	sortedMethods ifNil:
		[ sortedMethods := (meths values sorted: [ :a1 :a2 | a1 time > a2 time]) ].
	^sortedMethods
