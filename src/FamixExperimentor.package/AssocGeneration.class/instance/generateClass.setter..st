running
generateClass: classProp setter: slotProp
	self generateClassName: classProp.
	' >> #' trace.
	(self generateSlotName: slotProp) trace.
	': anObject' traceCr.
	'	<generated>' traceCr.
	'	' trace.
	(self generateSlotName: slotProp) trace.
	' := anObject' traceCr.
	'' traceCr