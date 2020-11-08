initialization
initialize
	znServer := ZnClient new
		"contentReader: [ :entity | entity ifNotNil: [ NeoJSONObject fromString: entity contents ] ];"
		contentWriter: [ :data | ZnEntity with: (NeoJSONWriter toString: data) type: ZnMimeType applicationJson ];
		enforceHttpSuccess: true;
		yourself