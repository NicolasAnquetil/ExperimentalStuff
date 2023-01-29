running
generateClassSlot: aFameProp
	'		#' trace.
	(self generateSlotName: aFameProp) trace.
	' => FMOne type: #Famix' trace.
	aFameProp type name trace.
	' opposite: #' trace.
	(self generateSlotName: aFameProp opposite) trace.
	' .' traceCr