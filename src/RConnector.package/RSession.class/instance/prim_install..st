ffi primitives
prim_install: aString
    ^ self ffiCall: #(SEXP Rf_install(String aString))