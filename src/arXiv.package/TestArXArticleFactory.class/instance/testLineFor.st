tests
testLineFor
	factory lines: #( 'line 1' 'line 2' 'and 3').

	self assert: (factory lineFor: [ :l | l beginsWith: 'line'] fromLine: 1 toLine: 3) equals: 1.
	self assert: (factory lineFor: [ :l | l beginsWith: 'line'] fromLine: 2 toLine: 3) equals: 2.
	self assert: (factory lineFor: [ :l | l beginsWith: 'line'] fromLine: 3 toLine: 3) equals: 0.
	self assert: (factory lineFor: [ :l | l beginsWith: 'and']  fromLine: 1 toLine: 3) equals: 3.
	self assert: (factory lineFor: [ :l | l beginsWith: 'blah'] fromLine: 1 toLine: 3) equals: 0.
