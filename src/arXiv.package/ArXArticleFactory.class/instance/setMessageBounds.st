private-parsing
setMessageBounds
	"set the line bounds of the main message and optional note message"
	| bound |
	bounds := OrderedCollection new: 4.
	[
		bound := self mimeBound.
		lines withIndexDo: [ :l :i | (l includesSubstring: bound) ifTrue: [ bounds add: i ]]
	] on: KeyNotFound
	do: [ | i |
		i := self
			lineFor: [ :l | l beginsWith: 'View the submission at http://arxiv.org']
			fromLine: 1
			toLine: lines size.
		bounds
			add: 0 ;  "actually not used"
			add: i ;
			add: lines size ;
			add: lines size
		]