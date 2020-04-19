activation
checkArguments
	| cmd |
	cmd := self arguments first asSymbol.
	[ self perform: cmd ]
   on: MessageNotUnderstood
	do: [ ^ false ].

	^ true