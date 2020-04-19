private - utilities
saveDB
	self backupFilename asFileReference writeStreamDo: [ :st |
		st nextPutAll: (STON toString: self articles) 
	].
