queries
topCollections
	^(NeoJSONReader
		on: (self get: 'collections/top') readStream)
		for: #ArrayOfZoteroCollection customDo: [ :mapping |
			mapping listOfElementSchema: ZoteroCollection ];
		nextAs: #ArrayOfZoteroCollection.
