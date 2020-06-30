private
rigthElement: elt
	^run2 methods
		detect: [:e | e method = elt method ]
		ifNone: [ nil ].
