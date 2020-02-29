private-parsing
joinMultiline: anArrayOfString forField: aPrefix
	^String streamContents: [:s |
		s nextPutAll: (anArrayOfString first allButFirst: aPrefix size + 1 ).
		anArrayOfString allButFirstDo: [ :line |
			"remove first character (a space) of the line"
			s nextPutAll: line allButFirst
		]
	]