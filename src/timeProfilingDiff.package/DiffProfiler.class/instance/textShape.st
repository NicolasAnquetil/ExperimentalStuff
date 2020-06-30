view creating
textShape
	^RTLabel new
		text: [:e | e method selector] ;
		yourself