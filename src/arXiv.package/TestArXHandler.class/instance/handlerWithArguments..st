running
handlerWithArguments: aCollection
	| commandLine |
	commandLine := CommandLineArguments withArguments: aCollection.	
	^ArXHandler new
		commandLine: commandLine;
		yourself.
