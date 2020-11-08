queries
allCollections
	^self topCollections
		flatCollect: [ :coll | self getSubCollectionsFor: coll ]
