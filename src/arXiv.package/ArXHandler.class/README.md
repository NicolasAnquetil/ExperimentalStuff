Usage: arXiv <cmd>
	
Commands:
  importMessage <file.mbox> -- Imports given mbox file into DB (outputs a backup of the DB)
  importWithKey <file.mbox> <collection> -- Imports given mbox file into DB
  listKeywords -- list all indexing key words in the DB
  listArticles -- list all indexed articles in the DB
  searchKeyword <keyword> -- search articles indexed with a given keyword
  cleanBackups -- keep only the last 5 backup files
  help -- prints this message
