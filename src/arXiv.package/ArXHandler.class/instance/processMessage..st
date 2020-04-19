activation
processMessage: file
	| art |
	file readStreamDo: [ :st | art := factory articleFrom: st ].
	self index: art at: factory getKeywords.
	self backupFilename asFileReference writeStreamDo: [ :st |
		st nextPutAll: (STON toString: self articles) 
	].
