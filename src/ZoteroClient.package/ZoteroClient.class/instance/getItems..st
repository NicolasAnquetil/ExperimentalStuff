private
getItems: query
	^(NeoJSONReader
		on: (self get: query) readStream)
		for: #ArrayOfZoteroItems customDo: [ :mapping |
			mapping listOfElementSchema: ZoteroItem ];
		nextAs: #ArrayOfZoteroItems.