activation
importZotero
	| key file |

	(self arguments size = 3)
	ifFalse: [ ^false ].
	
	key := self arguments second.
	file := self getMboxFile: (self arguments third).
	file ifNil: [ ^false ].
	self parseMessage: file.
	self reloadDB.
	self index: factory article at: { key }.
	self saveDB.
	self nbArticlesFound: (self countArticles)