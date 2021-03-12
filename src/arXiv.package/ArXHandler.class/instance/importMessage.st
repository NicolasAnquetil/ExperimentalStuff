activation
importMessage
	| file |
	file := self getMboxFile: (self arguments second).
	file ifNil: [ ^false ].
	self reloadDB.
	self processMessage: file.
	self saveDB.
	self nbArticlesFound: (self countArticles)