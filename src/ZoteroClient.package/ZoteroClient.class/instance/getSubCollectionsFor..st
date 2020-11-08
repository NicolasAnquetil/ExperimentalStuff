private
getSubCollectionsFor: aZoteroCollection
	aZoteroCollection nbSubCollections = 0
	ifTrue: [ #() ]
	ifFalse: [
		(self subCollectionsOf: aZoteroCollection key)
			flatCollect: [ :coll | self getSubCollectionsFor: coll ]
	]