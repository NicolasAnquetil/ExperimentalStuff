factory
getKeywords
	"keywords start after an empty line after the note header which is a 'second message' after the body of the 'first' nessage
	 it ends with an empty line after the start line"
	| startLine endline |
	startLine := self lineFor: [ :l | l beginsWith: 'Subject: '] fromLine: self bodyEnd toLine: self noteEnd.
	startLine := self lineFor: [ :l | l isEmpty ] fromLine: startLine toLine: self noteEnd.
	startLine := startLine + 1.
	endline := self lineFor: [ :l | l isEmpty ] fromLine: startLine toLine: self noteEnd.
	^ lines copyFrom: startLine to: endline - 1