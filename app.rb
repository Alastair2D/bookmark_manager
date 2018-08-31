require 'sinatra/base'
require './lib/bookmarks'

class Bkmk < Sinatra::Base
  enable :sessions

  get '/' do
    'Hello world'
  end

  get '/bookmarks' do
    @bookmarks = Bookmarks.fetch_bookmarks
    erb:index
  end

  post '/bookmarks' do 
    Bookmarks.create(params[:url])
    redirect '/bookmarks'
  end

  get '/add' do
    erb:add
  end


  run! if app_file == $0

end
