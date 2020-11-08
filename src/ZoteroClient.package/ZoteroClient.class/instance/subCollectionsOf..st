queries
subCollectionsOf: collectionKey
	^self getCollections: 'collections/' , collectionKey , '/collections'