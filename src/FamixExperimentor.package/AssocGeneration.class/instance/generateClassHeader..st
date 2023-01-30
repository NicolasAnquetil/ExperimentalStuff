generating
generateClassHeader: aFameProp
	'' traceCr.
	'" ----- ' trace.
	(self generateClassName: aFameProp) trace.
	' ----- "' traceCr.
	'' traceCr.
	'(FamixJavaEntity << #' trace.
	(self generateClassName: aFameProp) trace.
	'' traceCr.
	'	traits: {FamixTAssociation};' traceCr.
