as yet unclassified
findFun: aStringOfFunctionName
	^ self prim_findFun: (self prim_install: aStringOfFunctionName) option: self rGlobalEnv
	