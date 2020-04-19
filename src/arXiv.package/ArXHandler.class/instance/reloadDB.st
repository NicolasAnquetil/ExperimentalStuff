activation
reloadDB
	articles := self backupFilename asFileReference
		readStreamDo: [ :st | STON fromStream: st].
