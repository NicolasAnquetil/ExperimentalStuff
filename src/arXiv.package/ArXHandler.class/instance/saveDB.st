private - utilities
saveDB
	self backupFilename asFileReference renameTo: 'articles.1.ston'.
	self backupFilename asFileReference writeStreamDo: [ :st |
		st nextPutAll: (STON toString: self articles) 
	].
