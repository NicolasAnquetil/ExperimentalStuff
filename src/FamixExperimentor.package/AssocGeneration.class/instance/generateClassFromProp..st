generating
generateClassFromProp: aFameProp
	self generateClassHeader: aFameProp.
	self generateClassSlots: aFameProp.
	self generateClassFooter: aFameProp.
	self generateClassMethods: aFameProp.
	self generateMetaClassMethods: aFameProp.

