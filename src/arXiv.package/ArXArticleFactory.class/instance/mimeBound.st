private-parsing
mimeBound
	| bound |
	bound := self search: 'Content-Type: multipart/mixed; boundary=' fromLine: 1 toLine: lines size.
	^bound copyFrom: (bound indexOf: $") + 1 to: (bound size - 1).