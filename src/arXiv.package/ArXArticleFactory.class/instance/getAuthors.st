factory
getAuthors
	"authors can be multiline, ended by next field: Categories"

	^ self getMultilineField: 'Authors:' endedBy: 'Categories:'