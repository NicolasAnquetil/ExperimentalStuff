accessing
neoJsonMapping: mapper
	mapper
		for: ZoteroCollection do: [ :mapping | 
	      mapping mapInstVar: #key.
			(mapping mapInstVar: #name to: #data)
				valueSchema: #collectionName
		].
	mapper
		for: #collectionName customDo: [ :mapping |
			mapping decoder: [ :dict | dict at: #name ]
		]