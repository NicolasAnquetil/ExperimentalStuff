opening
collectMethod: aTally calledBy: aCaller
	| dp mth |
	dp := DPTally new
		onTally: aTally ;
		caller: aCaller ;
		yourself.
	mth := aTally method.
	meths at: mth put: dp.
	aTally receivers do: [:m | self collectMethod: m calledBy: mth ]