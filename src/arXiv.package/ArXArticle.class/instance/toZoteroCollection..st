activation
toZoteroCollection: aCollectionName
	| zotero pharoteroItem |
	zotero := PharoteroServer new
		rmodIdentity ;
		yourself.

	pharoteroItem := self asPharoteroItem: (zotero newItem: 'document') readStream.
	pharoteroItem
		parentCollection: (zotero collectionNamed: aCollectionName) ;
		date: Date today.
	zotero putItem: pharoteroItem