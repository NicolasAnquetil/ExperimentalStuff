running
generateClassHeader: aFameProp
	'' traceCr.
	'" ----- ' trace.
	self generateClassName: aFameProp.
	' ----- "' traceCr.
	'' traceCr.
	'(FamixJavaEntity << #' trace.
	self generateClassName: aFameProp.
	'' traceCr.
	'	traits: {FamixTAssociation};' traceCr.
