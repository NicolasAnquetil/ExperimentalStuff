activation
toZoteroCollection: aCollectionName
	| zotero pharoteroItem |
	zotero := PharoteroServer new
		url: PharoteroServer zoteroURL ;
		defaultKey ;
		yourself.

	pharoteroItem := self asPharoteroItem: (zotero getNewItem: 'document').
	pharoteroItem parentCollection: (zotero collectionNamed: aCollectionName).
	zotero putItem: pharoteroItem