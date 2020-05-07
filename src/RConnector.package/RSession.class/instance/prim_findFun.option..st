ffi primitives
prim_findFun: aSEXPfunction option: aSEXPoption
    ^ self ffiCall: #(SEXP Rf_findFun(SEXP aSEXPfunction, SEXP aSEXPoption))