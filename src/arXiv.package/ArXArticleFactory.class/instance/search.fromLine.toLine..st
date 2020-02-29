private-parsing
search: aString fromLine: startLine toLine: endLine
	startLine to: endLine do: [ :i |
		((lines at: i) beginsWith: aString)
		ifTrue: [ ^ lines at: i ]
	].
	^''