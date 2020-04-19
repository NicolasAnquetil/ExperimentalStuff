activation
reloadDB
	self class articleDB: (self backupFilename readStreamDo: [ :st | STON fromStream: st])