private
getItemsFor: aZoteroCollection
	^aZoteroCollection nbItems = 0
		ifTrue: [ #() ]
		ifFalse: [ self itemsOf: aZoteroCollection key ]