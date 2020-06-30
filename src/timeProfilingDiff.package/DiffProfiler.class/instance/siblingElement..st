private
siblingElement: elt
	| elt1 elt2 |
	elt1 := run1 methods
		detect: [:e | e method = elt method ]
		ifNone: [ ^#() ].
	elt2 := run2 methods
		detect: [:e | e method = elt method ]
		ifNone: [ ^#() ].
	^(elt1 = elt)
		ifTrue: [ {elt2} ]
		ifFalse: [ {elt1} ]