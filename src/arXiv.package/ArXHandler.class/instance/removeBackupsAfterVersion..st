private - utilities
removeBackupsAfterVersion: aNumber
	"shift backups files until last one as version <= aNumber"
	| shiftFrom shiftTo nextVersion |
	nextVersion := ((self secondaryBackup basename copyAfter: $.) copyUpTo: $.) asInteger .
	(nextVersion <= aNumber) ifTrue: [ ^ self ].
	shiftTo := 1.
	shiftFrom := nextVersion - aNumber.
	[ nextVersion > shiftFrom ]
	whileTrue: [
		self renameFile: (self backupFilename: shiftFrom) to: (self backupFilename: shiftTo).
		shiftTo := shiftTo+1.
		shiftFrom := shiftFrom+1.
	]
