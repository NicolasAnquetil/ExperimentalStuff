private-parsing
getMultilineField: aString endedBy: endString
	| endLine startLine |
	startLine := self
		lineFor: [ :l | l beginsWith: aString ]
		fromLine: self bodyStart
		toLine: self bodyEnd.
	endLine := self
		lineFor: [ :l | l beginsWith: endString ]
		fromLine: startLine
		toLine: self bodyEnd.
	^ self
		joinMultiline: (lines copyFrom: startLine to: endLine - 1)
		forField: aString