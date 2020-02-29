private-parsing
getField: aString
	| field |
	field := self searchInBody: aString.
	^ field copyFrom: aString size+2 to: field size.
	