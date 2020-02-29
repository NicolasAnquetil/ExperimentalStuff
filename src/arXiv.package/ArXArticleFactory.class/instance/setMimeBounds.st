private-parsing
setMimeBounds
	| bound |
	bounds := OrderedCollection new: 4.
	bound := self search: 'Content-Type: multipart/mixed; boundary=' fromLine: 1 toLine: lines size.
	bound := bound copyFrom: (bound indexOf: $") + 1 to: (bound size - 1).
	lines withIndexDo: [ :l :i | (l includesSubstring: bound) ifTrue: [ bounds add: i ]]