tests
testProcessArgument
	'tmp.mbox' asFileReference writeStreamDo: [:st |
		st nextPutAll: self example.
	].
	ArXHandler reset.
	handler := self handlerWithArguments: #('tmp.mbox').
	handler interpretCommand.
	handler processArguments.
	self assert: ArXHandler articleDB size equals: 2.
	self assert: (ArXHandler articleDB at: 'keyword1') size  equals: 1.
	self assert: (ArXHandler articleDB at: 'key word2') size  equals: 1.

	'tmp.mbox' asFileReference delete.