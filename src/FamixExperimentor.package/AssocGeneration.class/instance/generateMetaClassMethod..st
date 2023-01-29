running
generateMetaClassMethod: aFameProp
	self generateClassName: aFameProp.
	' class compile:' traceCr.
	'''annotation' traceCr.
	'	<FMClass: #' trace.
	self generateClassName: aFameProp.
	' super: #FamixJavaEntity>' traceCr.
	'	<package: #''''Famix-Traits''''>' traceCr.
	'	<generated>' traceCr.
	'	^self''.' traceCr