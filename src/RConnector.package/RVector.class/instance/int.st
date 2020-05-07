as yet unclassified
int
	(self typeOf = #INTSXP or: [ self isInteger ])
		ifFalse: [ CannotBeConvertedToType signal ].
	^self prim_integerSelf