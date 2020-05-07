tests
test1Plus1
	| res |
	res := RFunction
		eval: '+'
		withParameters:
			{1.
			1}.
	self assert: (res isKindOf: RIntVector).
	self assert: res first equals: 2