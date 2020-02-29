private-parsing
content: aMessage
	lines := aMessage lines.
	
	self setMimeBounds.

	self setTitle.
	self setAuthors.
	self setAbstract.