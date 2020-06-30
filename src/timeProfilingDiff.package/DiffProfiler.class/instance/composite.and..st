view creating
composite: subShape1 and: subShape2
	| shape |
	shape := RTCompositeShape new
		add: subShape1 ;
		add: subShape2 ;
		horizontal ;
		yourself.
	^shape
