require_relative 'player'

class Game
  attr_reader :player_1, :player_2
  
  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @turn = player_1
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def turn
    @turn
  end

  def attack(player)
    player.receive_damage
  end

  def turn_switcher
    if @turn == player_1
      @turn = player_2
    elsif @turn == player_2
      @turn = player_1
    end
  end
  
end