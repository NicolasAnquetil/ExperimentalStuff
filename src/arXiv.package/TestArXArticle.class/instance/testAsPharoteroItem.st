running
testAsPharoteroItem
	| pharoteroItem |
	pharoteroItem := article asPharoteroItem: self zoteroEmptyDocumentJSON.

	self assert: pharoteroItem title equals: 'My nice title'.
	self assert: pharoteroItem url equals: 'http://somewhere.com'.
	self assert: pharoteroItem abstract equals: 'And a very short asbtract'.
	self assert: pharoteroItem authors size equals: 3
	