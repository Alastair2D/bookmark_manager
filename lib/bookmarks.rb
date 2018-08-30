require 'pg'

class Bookmarks

  def self.fetch_bookmarks # this returns a tuple (a bunch of hashes)
    db_connect = PG.connect( dbname: "bookmark_manager#{ "_test" if ENV["RACK_ENV"] == "test" }") 
    db_result = db_connect.exec( "SELECT * FROM bookmarks")
    db_result.map { |bookmark| "#{bookmark['url']}, \n" }
  end
  
  def self.create(url)
    db_connect = PG.connect( dbname: "bookmark_manager#{ "_test" if ENV["RACK_ENV"] == "test" }") 
    # new_url_id = db_connect.exec('SELECT COUNT(*) FROM bookmarks').to_i + 1
    new_url_id = rand(1..1000)
    db_connect.exec("INSERT INTO bookmarks VALUES(#{new_url_id}, '#{url}')")
  end

end
