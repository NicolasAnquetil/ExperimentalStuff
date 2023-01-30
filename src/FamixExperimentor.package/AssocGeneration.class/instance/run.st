running
run
	| allPropos |
	allPropos := self getProps.
	allPropos do: [ :prop | self generateClassFromProp: prop ].
	self instanciateProps: allPropos 