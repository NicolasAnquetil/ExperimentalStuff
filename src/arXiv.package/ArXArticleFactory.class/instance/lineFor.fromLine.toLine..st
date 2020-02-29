private-parsing
lineFor: aBlock fromLine: startLine toLine: endLine
	startLine to: endLine do: [ :i |
		(aBlock value: (lines at: i))
		ifTrue: [ ^ i ]
	].
	^0