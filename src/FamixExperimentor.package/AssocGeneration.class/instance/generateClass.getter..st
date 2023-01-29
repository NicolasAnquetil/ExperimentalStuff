running
generateClass: classProp getter: slotProp
	self generateClassName: classProp.
	' compile:' traceCr.
	$' trace.
	(self generateSlotName: slotProp) traceCr.
	'	<generated>' traceCr.
	'	^' trace.
	(self generateSlotName: slotProp) trace.
	'''.' traceCr.
	'' traceCr.