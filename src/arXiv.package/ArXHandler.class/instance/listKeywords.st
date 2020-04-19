activation
listKeywords
	self reloadDB.
	(self articles associations
		sorted: [ :a :b | a key < b key ])
		do: [ :assoc |
			self stdout
				nextPutAll: (assoc key) ;
				nextPutAll: ' - ' ;
				nextPutAll: (assoc value asString) ;
				nextPut: Character cr
		]