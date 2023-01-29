running
generateClassHeader: aFameProp
	'FamixJavaEntity << ' trace.
	self generateClassName: aFameProp.
	'' traceCr.
	'	traits: {FamixTAssociation};' traceCr.
