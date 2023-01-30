instance creation
createInstance: aProp forEntity: anEntity
	| value |
	value := (anEntity perform: aProp name).
	value isCollection
	ifTrue: [value do: [ :each |
			self createInstance: aProp forEntity: anEntity value: each
	] ]
	ifFalse: [ self createInstance: aProp forEntity: anEntity value: value ]