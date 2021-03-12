private-parsing
content: aMessage
	lines := aMessage lines.
	
	self setMessageBounds.

	self setTitle.
	self setAuthors.
	self setAbstract.