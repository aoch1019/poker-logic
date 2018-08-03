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

  def shuffle
    new_card_array = []

    counter = 0
    chosen_nums = []

    until counter == 52
      random_index = rand(0..51)
      until chosen_nums.include?(random_index) == false
        random_index = rand(0..counter)
      end
      chosen_nums << random_index
      new_card_array << @cards[random_index]
      counter += 1
    end

    return new_card_array
  end

end

# my_deck1 = Deck.new
# my_deck2 = Deck.new
# binding.pry
# 0
