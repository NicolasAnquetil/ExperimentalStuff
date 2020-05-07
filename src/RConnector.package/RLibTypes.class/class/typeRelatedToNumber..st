accessing
typeRelatedToNumber: index
	^ typeRelatedToNumberCache 
		at: index
		ifAbsentPut: [ self classVarNames
				detect: [ :classvarname | (self classVarNamed: classvarname) = index ]
		]