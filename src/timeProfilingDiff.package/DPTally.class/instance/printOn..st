printing
printOn: aStream
	^aStream
		nextPutAll: (self method name) ;
		nextPutAll: ' - ' ;
		nextPutAll: (self time asString) ;
		yourself