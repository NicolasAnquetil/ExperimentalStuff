activation
listArticles
	|totalArt|
	totalArt := 0.
	self reloadDB.
	(self articles flatCollectAsSet: #yourself)
		do: [ :art |
			totalArt := totalArt + 1.
			art longPrintOn: self stdout.
			self stdout
				nextPutAll: '-----' ;
				nextPut: Character cr.
		].
	self nbArticlesFound: totalArt.
	self exitSuccess