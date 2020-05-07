evaluating
eval
	self functionName ifNil: [ ^ self ].
	self parameters ifNil: [ ^ self ].
	^self createLangageExpression eval.
