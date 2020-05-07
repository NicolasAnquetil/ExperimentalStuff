as yet unclassified
getRObjectFromGlobalVariable: varName
	^ RObject new handle: (self ffiGetGlobalVariable: varName)