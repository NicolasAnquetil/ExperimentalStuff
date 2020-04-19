activation
merge
	| key1 key2 |
	(self arguments size < 3)
		ifTrue: [
			self printHelp.
			self exitFailure 
			].
	key1 := self arguments second.
	key2 := self arguments third.
	self reloadDB.
	(self articles at: key2) do: [ :art|
		self keyword: key1 add: art
	].
	self articles removeKey: key2.
	self saveDB 