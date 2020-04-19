activation
activate
	self activateHelpWithoutArguments
		ifTrue: [ ^ self ].
	self checkArguments
		ifFalse: [ ^ self printHelp ].

	Smalltalk snapshot: false andQuit: true.