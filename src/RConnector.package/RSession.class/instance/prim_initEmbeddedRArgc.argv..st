ffi primitives
prim_initEmbeddedRArgc: argc argv: argv
	^self ffiCall: #(int Rf_initEmbeddedR(int argc, RArrayOfStrings argv)).
