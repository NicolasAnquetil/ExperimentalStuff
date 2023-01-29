running
generateMetaClassMethod: aFameProp
	self generateClassName: aFameProp.
	' class >> #' trace.
	'annotation' traceCr.
	'	<FMClass: #' trace.
	self generateClassName: aFameProp.
	' super: #Object>' traceCr.
	'	<package: #''Famix-Traits''>' traceCr.
	'	<generated>' traceCr.
	'	^self' traceCr