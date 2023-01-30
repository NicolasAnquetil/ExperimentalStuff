instance creation
entity: anEntity hasProps: allProps
	 ^((FamixJavaModel metamodel fmTypeOf: anEntity class) allRelationProperties intersection: allProps)
		select: [ :aProp || value |
			value := anEntity perform: aProp name.
			value isNotNil and:
			[ value isCollection not or: [ value isNotEmpty ]  ]
		]