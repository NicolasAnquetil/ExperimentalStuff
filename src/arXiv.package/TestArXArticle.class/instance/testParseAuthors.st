running
testParseAuthors
	| parsed |
	parsed := article parseAuthors: article authors.
	self assert: parsed size equals: 3.

	self assert: (parsed first firstName) equals: 'First'.
	self assert: (parsed first lastName) equals: 'Author'.
	self assert: (parsed second firstName) equals: '2.'.
	self assert: (parsed second lastName) equals: 'Author'.
	self assert: (parsed third firstName) equals: 'The Third'.
	self assert: (parsed third lastName) equals: 'Author'.