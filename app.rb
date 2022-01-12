require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    @player_one = params[:name_player_one]
    @player_two = params[:name_player_two]
    erb(:play)
  end

  run! if app_file == $0
end