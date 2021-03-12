tests
testSearchLine
	| testLines |
	testLines := #( 'line 1' 'line 2' 'and 3').
	factory lines: testLines.

	self assert: (factory search: 'line' fromLine: 1 toLine: 3) equals: testLines first.
	self assert: (factory search: 'line' fromLine: 2 toLine: 3) equals: testLines second.
	self assert: (factory search: 'and'  fromLine: 1 toLine: 3) equals: testLines third.

	self should: [factory search: 'line' fromLine: 3 toLine: 3] raise: NotFound.
	self should: [factory search: 'blah' fromLine: 1 toLine: 3] raise: NotFound.
