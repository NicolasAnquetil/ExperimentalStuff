private
alternate: coll1 and: coll2
	| max coll |
	max := { coll1 size . coll2 size } min.
	coll := RTGroup new: max * 2.
	1 to: max do: [ :i |
		coll add: (coll1 at: i).
		coll add: (coll2 at: i).
	].
	^coll