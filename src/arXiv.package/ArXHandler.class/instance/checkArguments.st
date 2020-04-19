activation
checkArguments
	| cmd |
	self hasArguments
		ifFalse: [ ^ false ].
	
	cmd := self arguments first asSymbol.
	[ self perform: cmd ]
   on: MessageNotUnderstood
	do: [ ^ false ].

	^ true