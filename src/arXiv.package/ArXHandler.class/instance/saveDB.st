private - utilities
saveDB
	FileSystem disk rename: self backupFilename to: self secondaryBackup.
	self backupFilename asFileReference writeStreamDo: [ :st |
		st nextPutAll: (STON toString: self articles) 
	].
