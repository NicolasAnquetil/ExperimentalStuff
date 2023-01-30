accessing
getProps
	"all 'non-association' relations"
	^(FamixJavaModel metamodel elements
	select: [ :e | e class = FM3Property  ])
	reject: [:p |
		p isContainer or:  "belongs-to are not candidates"
		[ p isDerived or:  "for derived, we will work on their opposite"
		[ p opposite isNil or:   "if no opposite, it is a special case not treated"
		[ (p implementingClass usesTrait: FamixTAssociation) or:   "ignore the one that are already Associations"
		[ (p implementingClass name includesSubstring: 'Association') or: 
		[ { 'Tag' . 'Comment' . 'Anchor' . 'Language'. 'File'. 'Invocation' }   "also ignore all these special cases"
			anySatisfy: [:ss | p mooseName includesSubstring: ss] ] ] ] ] ] ].
