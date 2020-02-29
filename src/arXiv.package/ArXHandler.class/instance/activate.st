activation
activate
	self checkArguments
		ifFalse: [ ^ self printHelp ].
		
	self processArguments.
	
	Smalltalk snapshot: true andQuit: true.