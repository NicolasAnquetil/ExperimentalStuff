api
getSubCollectionsFor: aZoteroCollection
	^aZoteroCollection nbSubCollections = 0
		ifTrue: [ { aZoteroCollection } ]
		ifFalse: [ | subCollections |
			subCollections := self subCollectionsOf: aZoteroCollection key.
			subCollections do: [ :coll | coll parentCollection: aZoteroCollection ].
			subCollections
				flatCollect: [ :coll | self getSubCollectionsFor: coll ]
		]