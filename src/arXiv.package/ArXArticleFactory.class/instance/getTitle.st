factory
getTitle
	"title can be multiline, ended by next field: Authors"
	^ self getMultilineField: 'Title:' endedBy:'Authors:'