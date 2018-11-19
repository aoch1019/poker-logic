require 'pry'
require_relative "./card"

class Player

  attr_reader :name, :cards

  @@all = []

  def initialize(name, card1, card2)
    @name = name
    @cards = [card1, card2]
    @@all << self
  end

  def self.all
    @@all
  end

  def display_cards
    @cards.map do |card|
      card.display_card
    end
  end

end

# card1 = Card.new("Spades", "Ace")
# card2 = Card.new("Diamonds", "3")
# andrew = Player.new("Andrew", card1, card2)
# binding.pry
# 0
