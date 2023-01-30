generating
generateClassMethods: aFameProp
	self generateClass: aFameProp getter: aFameProp.
	self generateClass: aFameProp setter: aFameProp.

	self generateClass: aFameProp getter: aFameProp opposite.
	self generateClass: aFameProp setter: aFameProp opposite.