ffi primitives
prim_protectSelf
	^self ffiCall: #(SEXP Rf_protect(self))