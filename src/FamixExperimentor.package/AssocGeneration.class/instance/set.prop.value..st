instance creation
set: instance prop: aProp value: value
	"instance writeSlotNamed: aProp name value: value"
	| slot |
	slot := instance class slotNamed: (self generateSlotName: aProp).
	slot object: instance instVarAt: slot index put: value
		