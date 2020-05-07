accessing
dictionaryOfImplementationClass
	^ { 
	NILSXP -> RNilValue.	"NULL"
	SYMSXP -> RSymbol.	"symbols"
	LISTSXP -> RObject."pairlists"
	CLOSXP -> RObject.	"closures"
	ENVSXP -> RObject.	"environments"
	PROMSXP -> RObject."promises"
	LANGSXP -> RLangageExpression."language objects"
	SPECIALSXP -> RObject."special functions"
	BUILTINSXP -> RObject."builtin functions"
	CHARSXP -> RChar."internal character strings"
	LGLSXP -> RBoolVector."logical vectors"
	INTSXP -> RIntVector."integer vectors"
	REALSXP -> RDoubleVector."numeric vectors"
	CPLXSXP -> RObject."complex vectors"
	STRSXP -> RStringVector."character vectors"
	DOTSXP -> RObject."dot-dot-dot object"
	ANYSXP -> RObject."make ҡnyӠargs work"
	VECSXP -> RList."list (generic vector)"
	EXPRSXP -> RObject."	expression vector"
	BCODESXP -> RObject.	"byte code"
	EXTPTRSXP -> RObject."external pointer"
	WEAKREFSXP -> RObject."weak reference"
	RAWSXP -> RObject."raw vector"
	S4SXP -> RObject"S4 classes not of simple type"
	} asDictionary