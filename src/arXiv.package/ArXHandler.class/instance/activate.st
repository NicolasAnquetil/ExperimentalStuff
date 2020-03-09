activation
activate
	self checkArguments
		ifFalse: [ ^ self printHelp ].
		
	self processArguments.
	self dumpDB.
	
	Smalltalk snapshot: true andQuit: true.