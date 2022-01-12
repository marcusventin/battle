require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    session[:name_player_one] = params[:name_player_one]
    session[:name_player_two] = params[:name_player_two]
    redirect '/play'
  end

  get '/play' do
    @name_player_one = session[:name_player_one]
    @name_player_two = session[:name_player_two]
    erb(:play)
  end

  run! if app_file == $0
end