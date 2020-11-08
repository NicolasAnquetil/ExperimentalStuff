initialization
initialize
	znServer := ZnClient new
		contentReader: [ :entity | entity contents ] ;
		contentWriter: [ :data |
			self notYetImplemented 
			"ZnEntity with: (NeoJSONWriter toString: data) type: ZnMimeType applicationJson" ];
		enforceHttpSuccess: true;
		yourself