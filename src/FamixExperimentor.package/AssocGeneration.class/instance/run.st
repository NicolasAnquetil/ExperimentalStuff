running
run
	self getProps do: [:prop |
		self generateClassFromProp: prop.
	]