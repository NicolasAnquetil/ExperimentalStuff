private
createLangageExpression
	| expression |
	expression := RLangageExpression new: self parameters size + 1.
	expression add: self functionName.
	1 to: self parameters size do: [ :index |
		expression add: (self parameters at: index) asPureRObject ].
	^ expression