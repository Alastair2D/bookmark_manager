require 'sinatra/base'
require './lib/bookmarks'
require 'sinatra/flash'
require 'uri'

class Bkmk < Sinatra::Base
  enable :sessions
  register Sinatra::Flash

  get '/' do
    'Hello world'
  end

  get '/bookmarks' do
    @bookmarks = Bookmarks.fetch_bookmarks
    erb:index
  end

  post '/bookmarks' do 
    flash[:notice] = "Invalid URL format" unless Bookmarks.create(params[:url])
    redirect '/bookmarks'
  end

  get '/add' do
    erb:add
  end


  run! if app_file == $0

end
