running
setUp
	super setUp.
	article := ArXArticle new
		title: 'My nice title' ;
		url: 'http://somewhere.com' ;
		authors: 'First Author, 2. Author and The Third Author' ;
		abstract: 'And a very short asbtract'