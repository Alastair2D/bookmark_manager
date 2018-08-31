require 'pg'
require 'sinatra/flash'

class Bookmarks

  def self.fetch_bookmarks # this returns a tuple (a bunch of hashes)
    db_connect = PG.connect( dbname: "bookmark_manager#{ "_test" if ENV["RACK_ENV"] == "test" }") 
    db_result = db_connect.exec( "SELECT * FROM bookmarks")
    db_result.map { |bookmark| "#{bookmark['url']}" }
  end
  
  def self.create(url)
      return false unless check_valid?(url)
      db_connect = PG.connect( dbname: "bookmark_manager#{ "_test" if ENV["RACK_ENV"] == "test" }") 
      db_connect.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
    end


# private

  def self.check_valid?(url)
    url =~ /\A#{URI::regexp(['http', 'https'])}\z/ 
  end


end
