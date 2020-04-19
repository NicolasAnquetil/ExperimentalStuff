activation
listKeywords
	|totalArt|
	totalArt := 0.
	self reloadDB.
	(self articles associations
		sorted: [ :a :b | a key < b key ])
		do: [ :assoc ||nbArt|
			nbArt := assoc value size.
			totalArt := totalArt + nbArt.
			self stdout
				nextPutAll: (assoc key) ;
				nextPutAll: ' - ' ;
				nextPutAll: (nbArt asString) ;
				nextPut: Character cr
		].
		self stdout
			nextPutAll: 'TOTAL - ' ;
			nextPutAll: (totalArt asString) ;
			nextPut: Character cr.
		self exitSuccess 