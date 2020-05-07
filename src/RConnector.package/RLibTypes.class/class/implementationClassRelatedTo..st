accessing
implementationClassRelatedTo: index
	^ self dictionaryOfImplementationClass
		at: index
		ifAbsent: [ self error: 'All the types are already referenced !' ]