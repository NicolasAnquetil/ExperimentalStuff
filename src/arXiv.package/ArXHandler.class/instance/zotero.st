activation
zotero
	| key file |

	(self arguments size < 3)
	ifTrue: [ 
		self exitFailure: 'zotero requires at least 2 arguments: <file.mbox> <collection>'	].

	file := self getMboxFile: (self arguments second).
	file ifNil: [ self exitFailure: 'Could not process file: ' , self arguments second].
	self parseMessage: file.

	key := ' ' join: (self arguments allButFirst: 2).

	factory article toZoteroCollection: key
