activation
searchKeyword
	| searched found |
	found := 0.
	searched := self arguments second.
	self reloadDB.
	self articles associationsDo: [ :assoc |
			(assoc key includesSubstring: searched)
				ifTrue: [
					assoc value do: [ :art |
						found := found + 1.
						art longPrintOn: self stdout.
						self stdout
							nextPutAll: '-----' ;
							nextPut: Character cr.
					]
				]
	].
	self nbArticlesFound: found.
	self exitSuccess