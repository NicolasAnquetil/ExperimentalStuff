printing
longPrintOn: aStream
	aStream
		nextPutAll: self authors ;
		nextPut: Character cr ;
		nextPutAll: self title ;
		nextPut: Character cr ;
		nextPutAll: self url ;
		nextPut: Character cr 