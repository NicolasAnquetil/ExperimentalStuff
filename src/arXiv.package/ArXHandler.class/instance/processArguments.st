activation
processArguments
	| art |
	arXivFile readStreamDo: [ :st | art := factory articleFrom: st ].
	self index: art at: factory getKeywords
