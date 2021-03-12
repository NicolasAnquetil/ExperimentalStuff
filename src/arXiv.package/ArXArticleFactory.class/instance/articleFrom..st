factory
articleFrom: aSteam
	lines := aSteam contents lines.
	self setMessageBounds.
	article := ArXArticle new.
	article title: self getTitle.
	article url: self getURL.
	article authors: self getAuthors.
	article abstract: self getAbstract.
	^ article