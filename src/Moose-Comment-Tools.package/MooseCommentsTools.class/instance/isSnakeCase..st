as yet unclassified
isSnakeCase: word
	"snake_case if there are several words separated by $_ ; (2) ideally no such subword
	 is only single letter long (we accept 1 subword with only 1 character) ; (3) there are at least
	 2 subwords with more than 1 character"
	| subwords |
	subwords := $_ split: word sourceText.
	( (subwords select: [ :sw | sw size < 2 ]) size <= 1 )
	and: [ (subwords reject: [ :sw | sw size < 2 ]) size <= 2 ]