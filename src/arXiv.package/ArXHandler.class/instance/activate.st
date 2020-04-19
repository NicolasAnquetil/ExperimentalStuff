activation
activate
	self checkArguments
		ifFalse: [ ^ self printHelp ].

	Smalltalk snapshot: true andQuit: true.