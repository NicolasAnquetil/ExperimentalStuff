private - utilities
parseMessage: file
	^file readStreamDo: [ :st | factory articleFrom: st ].