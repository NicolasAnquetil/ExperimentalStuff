api
getAllCollections
	^self topCollections
		flatCollect: [ :coll | self getSubCollectionsFor: coll ]
