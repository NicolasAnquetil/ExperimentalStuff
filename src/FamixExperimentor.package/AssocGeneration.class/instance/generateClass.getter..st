running
generateClass: classProp getter: slotProp
	self generateClassName: classProp.
	' >> #' trace.
	(self generateSlotName: slotProp) traceCr.
	'	<generated>' traceCr.
	'	^' trace.
	(self generateSlotName: slotProp) traceCr.
	'' traceCr.