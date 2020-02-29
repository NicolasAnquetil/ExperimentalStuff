factory
getAbstract
	"abstract starts after an empty line after the Title: line
	 and ends with the body"
	| startLine |
	startLine := self lineFor: [ :l | l beginsWith: 'Authors:'] fromLine: self bodyStart toLine: self bodyEnd.
	startLine := self lineFor: [ :l | l isEmpty ] fromLine: startLine toLine: self bodyEnd.
	^ String cr join: (lines copyFrom: startLine+1 to: self bodyEnd-1).