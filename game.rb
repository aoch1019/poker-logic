require 'pry'
require_relative "./card"
require_relative "./deck"
require_relative "./player"

class Game

  attr_accessor :deck, :players, :cards_in_play

  @@all = []

  def initialize
    @deck = Deck.new
    @deck = @deck.shuffle
    @players = []
    @cards_in_play = []
    @@all << self
  end

  def self.all
    @@all
  end

  def add_player(player)
    @players << player
  end

  def take_card
    @deck.pop
  end

  def deal
    @players.each do |player|
      player.card1 = take_card
      player.card2 = take_card
    end
  end

  def flop

  end

  def turn

  end

  def river

  end

end

player = Player.new("Andrew")
game = Game.new
game.add_player(player)
binding.pry
0
