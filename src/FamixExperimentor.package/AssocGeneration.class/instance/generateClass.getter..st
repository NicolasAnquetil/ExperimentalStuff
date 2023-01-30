generating
generateClass: classProp getter: slotProp
	(self generateClassName: classProp) trace.
	' compile:' traceCr.
	$' trace.
	(self generateSlotName: slotProp) traceCr.
	'	<generated>' traceCr.
	'	^' trace.
	(self generateSlotName: slotProp) trace.
	'''.' traceCr.
	'' traceCr.