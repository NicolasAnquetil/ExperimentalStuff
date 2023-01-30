generating
generateMetaClassMethods: aFameProp
	(self generateClassName: aFameProp) trace.
	' class compile:' traceCr.
	'''annotation' traceCr.
	'	<FMClass: #' trace.
	(self generateClassName: aFameProp) trace.
	' super: #FamixJavaEntity>' traceCr.
	'	<package: #''''Famix-Java-Entities''''>' traceCr.
	'	<generated>' traceCr.
	'	^self''.' traceCr.
		'' traceCr.
		
	(self generateClassName: aFameProp) trace.
	' class compile:' traceCr.
	'''metamodel' traceCr.
	'	<generated>' traceCr.
	'	^ FamixJavaModel metamodel''.' traceCr.