private-parsing
searchInBody: aString
	^ self search: aString fromLine: self bodyStart toLine: self bodyEnd
	