private  model
formatName: aNamespace
	^ (aNamespace mooseName withoutPrefix: (self defaultJavaPackagePrefix , '::'))
			copyReplaceAll: '::' with: '.'