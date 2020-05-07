as yet unclassified
ffiGetGlobalVariable: variableName module: aModule
	^ (ExternalAddress loadSymbol: variableName module: aModule)
		unpackFromArity: 2