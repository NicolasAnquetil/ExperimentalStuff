activation
asPharoteroItem: aJSONString
	| pharoteroItem |
	pharoteroItem := (NeoJSONReader on: aJSONString readStream)
		nextAs: PharoteroItem .
	pharoteroItem title: title.
	pharoteroItem url: url.
	pharoteroItem abstract: abstract.
	pharoteroItem authors: (self parseAuthors: authors).
	^pharoteroItem 