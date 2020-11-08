private
getCollections: query
	^self get: query
"(NeoJSONReader
		on: (self get: query) readStream)
		for: #ArrayOfZoteroCollection customDo: [ :mapping |
			mapping listOfElementSchema: ZoteroCollection ];
		nextAs: #ArrayOfZoteroCollection."
