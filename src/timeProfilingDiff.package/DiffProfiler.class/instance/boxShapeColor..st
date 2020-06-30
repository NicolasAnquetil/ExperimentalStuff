view creating
boxShapeColor: aColor
	^RTBox new
		size: [ :e | e time ] ;
		color: aColor ;
		yourself