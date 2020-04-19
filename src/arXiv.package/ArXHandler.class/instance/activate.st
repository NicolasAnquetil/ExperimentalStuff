activation
activate
	self checkArguments
		ifFalse: [ ^ self printHelp ].

	Smalltalk snapshot: false andQuit: true.