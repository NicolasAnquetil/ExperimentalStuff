opening
onBlock: aBlock 
	prof := TimeProfiler new.
	prof runBlock: aBlock.
	self collectMethods.