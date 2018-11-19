require 'pry'
require_relative "./card"

class Deck

attr_accessor :cards

  def initialize
    deck_compiler = []

    Card.get_possible_suits.each do |suit|
      Card.get_possible_values.each do |value|
        deck_compiler << Card.new(suit, value)
      end
    end

    @cards = deck_compiler
  end

  def print_deck
    @cards.each do |card|
      puts card.display_card
    end
    return nil
  end

end

# my_deck = Deck.new
# binding.pry
# 0
