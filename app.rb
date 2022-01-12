require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player'

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
    $player_1 = Player.new(name: params[:name_player_one] )
    $player_2 = Player.new(name: params[:name_player_two] )
    redirect '/play'
  end

  get '/play' do
    @name_player_one = $player_1.name
    @name_player_two = $player_2.name
    erb(:play)
  end

  get '/attack' do
    @name_player_one = $player_1.name
    @name_player_two = $player_2.name
    erb(:attack)
  end

  run! if app_file == $0
end