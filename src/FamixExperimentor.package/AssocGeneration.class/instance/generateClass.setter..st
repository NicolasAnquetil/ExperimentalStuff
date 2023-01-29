running
generateClass: classProp setter: slotProp
	self generateClassName: classProp.
	' compile:' traceCr.
	$' trace.
	(self generateSlotName: slotProp) trace.
	': anObject' traceCr.
	'	<generated>' traceCr.
	'	' trace.
	(self generateSlotName: slotProp) trace.
	' := anObject' traceCr.
	'''.' traceCr.
	'' traceCr.