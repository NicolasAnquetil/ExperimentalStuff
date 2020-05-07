ffi primitives
prim_typeOfSelf
	^self ffiCall: #(int TYPEOF(self))