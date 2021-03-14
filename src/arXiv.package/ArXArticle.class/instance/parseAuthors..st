activation
parseAuthors: aString
	^((', ' split: aString) flatCollect: [ :s | ' and ' split: s ])
		collect: [ :auth | self parseAuthor: auth ]