generating
generateClassSlots: aFameProp
	'	slots: {' traceCr.
	self generateClassSlot: aFameProp.
	self generateClassSlot: aFameProp opposite.
	'	};' traceCr