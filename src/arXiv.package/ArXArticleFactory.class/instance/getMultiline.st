private-parsing
getMultiline
	| endLine startLine |
	startLine := self
		lineFor: [ :l | l beginsWith: 'Authors:' ]
		fromLine: self bodyStart
		toLine: self bodyEnd.
	endLine := self
		lineFor: [ :l | l beginsWith: 'Categories:' ]
		fromLine: startLine
		toLine: self bodyEnd.
	^ self
		joinMultiline: (lines copyFrom: startLine + 1 to: endLine - 1)
		forField: 'Authors:'