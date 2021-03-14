activation
toZoteroCollection: aCollectionName
	| zotero pharoteroItem pharoteroCollection |
	zotero := PharoteroServer new
		url: PharoteroServer zoteroURL ;
		defaultKey ;
		yourself.

	pharoteroItem := self asPharoteroItem: (zotero getNewItem: 'document').
	pharoteroCollection := zotero collectionNamed: aCollectionName.
	zotero putItem: pharoteroItem inCollection: pharoteroCollection