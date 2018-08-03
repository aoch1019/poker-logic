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
    @cards_in_play << take_card
    @cards_in_play << take_card
    @cards_in_play << take_card
  end

  def turn
    @cards_in_play << take_card
  end

  def river
    @cards_in_play << take_card
  end

  def compare_player_hands
    best_hands = []

    @players.each do |player|
      best_hand_hash = MakeBestHand.new(player, self).find_best_hand
      best_hands << best_hand_hash
    end

    return CompareHands.new(best_hands).find_winner
  end

end

# player = Player.new("Andrew")
# game = Game.new
# game.add_player(player)
# binding.pry
# 0
