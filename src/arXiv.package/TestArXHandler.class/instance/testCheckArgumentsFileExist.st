tests
testCheckArgumentsFileExist
	'tmp.mbox' asFileReference createFile.
	self assert: (self handlerWithArguments: #('tmp.mbox')) interpretCommand.
	
	'tmp.mbox' asFileReference delete.
	self deny: (self handlerWithArguments: #('tmp.mbox')) interpretCommand.