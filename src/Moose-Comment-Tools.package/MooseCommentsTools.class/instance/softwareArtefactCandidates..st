as yet unclassified
softwareArtefactCandidates: aMooseModel
	"looks for all possible software artefact mentions in all comments
	 Concretly looking for words that use CamelCase or Underscore"

	| allComments uiFeedback |
	allComments := aMooseModel allComments asOrderedCollection.
	uiFeedback := (allComments size * 0.01) asInteger. "feedback every 1 %"

	^'Looking for software artifacts in comments'
	displayProgressFrom: 1 to: allComments size
	during: [:bar || i |
		i := 1.
		allComments
			select: [ :cmt |
				((i \\ uiFeedback) = 0) ifTrue: [
					bar value: i.
					Smalltalk snapshot: true andQuit: false.
				].
				
				i := i + 1.
				(Character space split: cmt sourceText)
					anySatisfy:  [ :word | (self isCamelCase: word) or: [ self isSnakeCase: word ] ]
			]
		].
