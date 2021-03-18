activation
importMessage
	| file |
	file := self getMboxFile: (self arguments second).
	file ifNil: [ self exitFailure: 'Could not process file: ' , self arguments second].
	self parseMessage: file.
	self reloadDB.
	self index: factory article at: factory getKeywords.
	self saveDB.
	self nbArticlesFound: (self countArticles)