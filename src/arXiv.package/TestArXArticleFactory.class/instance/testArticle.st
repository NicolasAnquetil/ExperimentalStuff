tests
testArticle
	| art |
	art := factory articleFrom: self example.
	
	self assert: art title equals: 'This is a Title on 2 lines'.
	self assert: art authors equals: 'These are the authors on several lines also'.
	self assert: art url equals: 'http://arxiv.org/mod/123456789'.
	self assert: art abstract = '  And this is a multi line abstract.
It is a bit uninformative, but we don''t care,
as it is for testing purposes
'

	
	