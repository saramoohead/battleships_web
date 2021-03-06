require 'sinatra/base'

class Battleships < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/new_game' do
    erb :new_game
  end

  post '/new_game' do
    @name = params[:name]
    erb :new_game
  end

  set :views, Proc.new {File.join(root, "..", "views")}

  # start the server if ruby file executed directly
  run! if app_file == $0
end
