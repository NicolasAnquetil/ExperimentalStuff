accessing
url: aString
	"(aString beginsWith: 'http://')
	ifTrue: [ url := aString copyFrom: 8 to: aString size]
	ifFalse: [url := aString ].

	(url endsWith: '/')
	ifFalse: [ url := url , '/' ]."
	baseURL := aString.
	znServer url: aString