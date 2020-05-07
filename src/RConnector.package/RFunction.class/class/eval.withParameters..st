as yet unclassified
eval: aString  withParameters: aCollection
	^ self new
		functionName: aString ;
		parameters: aCollection ;
		eval