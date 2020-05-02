private - utilities
processMessage: file
	| art |
	file readStreamDo: [ :st | art := factory articleFrom: st ].
	self index: art at: factory getKeywords.