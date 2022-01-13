require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:name_player_one])
    player_2 = Player.new(params[:name_player_two])
    $game = Game.new( player_1, player_2 )
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb(:play)
  end

  get '/attack' do
    @game = $game
    if @game.current_turn == @game.player_1
      @game.attack(@game.player_2)
    elsif @game.current_turn == @game.player_2
      @game.attack(@game.player_1)
    end
    erb(:attack)
  end

  post '/switch-turns' do
    $game.switch_turns
    redirect('/play')
  end

  run! if app_file == $0
end