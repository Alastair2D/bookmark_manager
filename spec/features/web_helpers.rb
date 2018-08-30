def add_bookmark_to_test_database
  db_connnect = PG.connect( dbname: 'bookmark_manager_test')
  db_connnect.exec("INSERT INTO bookmarks VALUES(1, 'makers')")
end

def clear_test_database
  db_connnect = PG.connect( dbname: 'bookmark_manager_test')
  db_clear = db_connnect.exec('DELETE FROM bookmarks')
end

