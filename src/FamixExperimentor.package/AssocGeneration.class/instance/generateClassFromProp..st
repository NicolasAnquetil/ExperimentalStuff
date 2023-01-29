running
generateClassFromProp: aFameProp
	self generateClassHeader: aFameProp.
	self generateClassSlots: aFameProp.
	self generateClassFooter: aFameProp.
	self generateClassMethods: aFameProp.
	self generateMetaClassMethod: aFameProp.

