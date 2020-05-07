ffi primitives
prim_endEmbeddedR: arg
    ^ self ffiCall: #(int  Rf_endEmbeddedR( int arg ))