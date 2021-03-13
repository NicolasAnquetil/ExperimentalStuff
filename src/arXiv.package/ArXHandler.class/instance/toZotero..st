activation
toZotero: collection
	| zotero |
	zotero := PharoteroServer new
		url: PharoteroServer zoteroURL ;
		defaultKey ;
		yourself.
