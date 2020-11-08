initialization
getAsJSON
	znServer contentReader: [ :entity | entity ifNotNil: [ NeoJSONObject fromString: entity contents ] ]