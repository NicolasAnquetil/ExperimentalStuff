instance creation
createInstance: aProp forEntity: anEntity value: value
	| instance |
	instance := (self generateClassName: aProp) asClass new.
	instance mooseModel: self model.
	self set: instance prop: aProp value: value.
	self set: instance prop: aProp opposite value: anEntity.
		