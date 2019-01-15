require './turn'
require './question'
require './player'

class Player
  @@number_of_players = 0

  def initialize
    @@number_of_players += 1
    @name = "player #{@@number_of_players}"
    @life = 3
  end

  def lose_life
    @life -= 1
  end

  attr_reader :life, :name

  def player_score
    "#{@name}: #{@life}/3"
  end

  def self.score players
    "#{players[0].player_score} vs #{players[1].player_score}"
  end

end