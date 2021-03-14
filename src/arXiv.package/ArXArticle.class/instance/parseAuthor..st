activation
parseAuthor: aString
	| parts |
	parts := ' ' split: aString.
	(parts size = 1) ifTrue: [ ^self authorObject: '' -> aString ].
	^self authorObject: (' ' join: parts allButLast) -> parts last

