ffi primitives
prim_integerSelf
	^self ffiCall: #(ulong INTEGER(self))