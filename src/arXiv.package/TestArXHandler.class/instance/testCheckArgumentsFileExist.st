tests
testCheckArgumentsFileExist
	'tmp.mbox' asFileReference createFile.
	self assert: (self handlerWithArguments: #('tmp.mbox')) checkArguments.
	
	'tmp.mbox' asFileReference delete.
	self deny: (self handlerWithArguments: #('tmp.mbox')) checkArguments.