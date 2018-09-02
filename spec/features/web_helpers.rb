def clear_test_database
  db_connnect = PG.connect( dbname: 'bookmark_manager_test')
  db_clear = db_connnect.exec('DELETE FROM bookmarks')
end

def add_correctly_formatted_bookmark_url_to_test_database
  db_connnect = PG.connect( dbname: 'bookmark_manager_test')
  db_connnect.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makers.com')")
end

def add_incorrectly_formatted_bookmark_url_to_test_database 
  db_connnect = PG.connect( dbname: 'bookmark_manager_test')
  db_connnect.exec("INSERT INTO bookmarks (url) VALUES ('makers')")
end

def add_correctly_formatted_bookmark_url_and_title_to_test_database
  db_connnect = PG.connect( dbname: 'bookmark_manager_test')
  db_connnect.exec("INSERT INTO bookmarks (title, url) VALUES('#{title}', '#{url}')")
end

