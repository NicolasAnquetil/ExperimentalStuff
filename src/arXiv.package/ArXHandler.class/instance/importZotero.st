activation
importZotero
	| key file |

	(self arguments size = 3)
	ifFalse: [ ^false ].
	
	key := self arguments second.
	file := self getMboxFile: (self arguments third).
	file ifNil: [ ^false ].
	self processMessage: file.