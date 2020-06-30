private
leftElement: elt
	^run1 methods
		detect: [:e | e method = elt method ]
		ifNone: [ nil ].
