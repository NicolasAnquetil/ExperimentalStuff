accessing
jsonMeta: neoJsonObject
	nbSubCollections := neoJsonObject at: #numCollections.
	nbItems := neoJsonObject at: #numItems.
