opening
collectMethods
	meths := Dictionary new.
	prof rootTallyItems do: [:m | self collectMethod: m calledBy: nil]