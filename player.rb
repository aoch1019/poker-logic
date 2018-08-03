require 'pry'
require_relative "./card"

class Player

  attr_accessor :card1, :card2
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    # @card1 = card1
    # @card2 = card2
    @@all << self
  end

  def self.all
    @@all
  end

  def join_game(game)
    game.add_player(self)
  end

  # def display_cards
  #   @cards.map do |card|
  #     card.display_card
  #   end
  # end

end

# card1 = Card.new("Spades", "Ace")
# card2 = Card.new("Diamonds", "3")
# andrew = Player.new("Andrew", card1, card2)
# binding.pry
# 0
