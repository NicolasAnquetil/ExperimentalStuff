private
getCollections: query
	^(NeoJSONReader
		on: (self get: query) readStream)
		for: #ArrayOfZoteroCollection customDo: [ :mapping |
			mapping listOfElementSchema: ZoteroCollection ];
		nextAs: #ArrayOfZoteroCollection.