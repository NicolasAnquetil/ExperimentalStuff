tests
testCheckArgumentsFail
	self deny: (self handlerWithArguments: #()) checkArguments.
	self deny: (self handlerWithArguments: #('arXiv')) checkArguments.