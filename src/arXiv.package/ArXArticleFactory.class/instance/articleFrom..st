factory
articleFrom: aSteam
	| art |
	lines := aSteam contents lines.
	self setMimeBounds.
	art := ArXArticle new.
	art title: self getTitle.
	art url: self getURL.
	art authors: self getAuthors.
	art abstract: self getAbstract.
	^ art