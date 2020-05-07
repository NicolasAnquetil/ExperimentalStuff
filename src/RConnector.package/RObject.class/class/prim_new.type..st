ffi primitives
prim_new: size type: type
	^ self ffiCall: #(SEXP Rf_allocVector(int type, int size))