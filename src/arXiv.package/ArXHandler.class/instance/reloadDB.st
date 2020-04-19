activation
reloadDB
	self class articleDB: (self backupFilename asFileReference readStreamDo: [ :st | STON fromStream: st]).
	
	Smalltalk snapshot: true andQuit: true.