tests
testCheckArgumentsFail
	self deny: (self handlerWithArguments: #()) interpretCommand.
	self deny: (self handlerWithArguments: #('arXiv')) interpretCommand.