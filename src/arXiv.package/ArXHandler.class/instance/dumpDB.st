activation
dumpDB
	'articles.json' asFileReference writeStreamDo: [ :st |
		st nextPutAll: (STON toString: self articles) 
	].
