activation
nbArticlesFound: nb
	self stdout
		nextPutAll: nb asString ;
		nextPutAll: ' article(s) found' ;
		nextPut: Character cr.
