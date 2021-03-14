activation
authorObject: assoc
	^NeoJSONObject new
		at: #firstName put: assoc key ;
		at: #lastName put: assoc value ;
		yourself

