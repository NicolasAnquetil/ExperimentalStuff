activation
activate
	| cmd |
	self activateHelpWithoutArguments
		ifTrue: [ self exitFailure ].

	cmd := self arguments first asSymbol.
	[ self perform: cmd ]
   on: MessageNotUnderstood
	do: [
		self printHelp.
		self exitFailure: 'Could not process command: ' , self arguments first ].
	self exitSuccess 