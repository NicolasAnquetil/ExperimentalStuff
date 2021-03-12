tests
testParsingSetup
	factory lines: self example lines.
	self assert: factory lines size equals: 51.

	factory setMessageBounds.
	self assert: factory bodyStart equals: 11.
	self assert: factory bodyEnd equals: 33.
	self assert: factory noteEnd equals: 50.
	
	