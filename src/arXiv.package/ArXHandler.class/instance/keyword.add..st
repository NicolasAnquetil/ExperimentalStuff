activation
keyword: key add: article
	| coll |
	coll := self articles at: key ifAbsentPut: [ OrderedCollection new ].
	coll add: article