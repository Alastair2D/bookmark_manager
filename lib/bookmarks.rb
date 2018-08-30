require 'pg'

class Bookmarks

  def self.fetch_bookmarks # this returns a tuple (a bunch of hashes)
    ENV['RACK_ENV'] == 'test' ? '_test' : ''

    db_connect = PG.connect( dbname: "bookmark_manager#{ "_test" if ENV["RACK_ENV"] == "test" }") 
    db_result = db_connect.exec( "SELECT * FROM bookmarks")
    db_result.map { |bookmark| "#{bookmark['url']}, \n" }
  end


end
