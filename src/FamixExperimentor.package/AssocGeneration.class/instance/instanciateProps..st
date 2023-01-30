instance creation
instanciateProps: allPropos
	model entities do: [ :entity |
		(self entity: entity hasProps: allPropos) do: [ :aProp |
			self createInstance: aProp forEntity: entity ]
	]