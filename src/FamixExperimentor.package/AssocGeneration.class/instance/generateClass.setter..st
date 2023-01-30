generating
generateClass: classProp setter: slotProp
	(self generateClassName: classProp) trace.
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