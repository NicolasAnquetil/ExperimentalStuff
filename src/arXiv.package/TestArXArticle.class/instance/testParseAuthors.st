running
testParseAuthors
	| parsed |
	parsed := article parseAuthors: article authors.
	self assert: parsed size equals: 3.

	self assert: (parsed first at: #firstName) equals: 'First'.
	self assert: (parsed first at: #lastName) equals: 'Author'.
	self assert: (parsed second at: #firstName) equals: '2.'.
	self assert: (parsed second at: #lastName) equals: 'Author'.
	self assert: (parsed third at: #firstName) equals: 'The Third'.
	self assert: (parsed third at: #lastName) equals: 'Author'.