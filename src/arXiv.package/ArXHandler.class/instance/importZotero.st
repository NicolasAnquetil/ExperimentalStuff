activation
importZotero
	| key file |

	(self arguments size < 3)
	ifTrue: [ 
		self exitFailure: 'importZotero requires 2 arguments: <file.mbox> <keyword>'	].

	file := self getMboxFile: (self arguments second).
	file ifNil: [ self exitFailure: 'Could not process file: ' , self arguments third].

	key := ' ' join: (self arguments allButFirst: 2).

	factory article toZoteroCollection: key
