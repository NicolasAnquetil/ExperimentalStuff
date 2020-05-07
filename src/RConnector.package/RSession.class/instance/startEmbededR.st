as yet unclassified
startEmbededR
	| args argv |
	args := #('R' '--no-save' 'silent').
	argv := (RArrayOfStrings externalNew: args size) autoRelease.
	args
		withIndexDo: [ :string :i | argv at: i put: (ExternalAddress fromString: string) ].
	self prim_initEmbeddedRArgc: args size argv: argv