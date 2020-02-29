private-parsing
getField: startString markedBy: endString
	| field |
	field := self searchInBody: startString.
	^ field copyFrom: startString size+2 to: field size.
	