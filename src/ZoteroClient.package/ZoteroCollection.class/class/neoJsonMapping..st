accessing
neoJsonMapping: mapper
	mapper
		for: ZoteroCollection do: [ :mapping | 
	      mapping mapInstVar: #key.
			(mapping mapInstVar: #name to: #data)
				valueSchema: #name.
			mapping mapAccessor: #jsonMeta to: #meta
		].

	mapper
		for: #name customDo: [ :mapping |
			mapping decoder: [ :dict | dict at: #name ]
		]
