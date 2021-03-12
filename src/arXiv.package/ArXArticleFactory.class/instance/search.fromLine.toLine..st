private-parsing
search: aString fromLine: startLine toLine: endLine
	| i |
	i := self lineFor: [ :l | l beginsWith: aString ] fromLine: startLine toLine: endLine.
	^i = 0
		ifTrue: [ KeyNotFound signal ]
		ifFalse: [ lines at: i ]