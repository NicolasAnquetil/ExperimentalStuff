class initialization
initialize
	SEXP := #RObject.
	self initializeObjectTypes.
	typeRelatedToNumberCache := Dictionary new