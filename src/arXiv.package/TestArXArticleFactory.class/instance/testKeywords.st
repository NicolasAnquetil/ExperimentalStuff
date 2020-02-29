tests
testKeywords
	| keywords |
	factory articleFrom: self example.
	keywords := factory getKeywords.

	self assert: keywords size equals: 2.
	self assert: keywords first equals: 'keyword1'.
	self assert: keywords second equals: 'key word2'.

	
	