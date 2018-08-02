require 'pry'

class Card

  attr_reader :suit, :value, :fake_value

  POSSIBLE_VALUES = ["Ace", "2", "3", "4", "5", "6", "7", "8", "9", "10", "Jack", "Queen", "King"]

  POSSIBLE_SUITS = ["Hearts", "Diamonds", "Clubs", "Spades"]

  # fake_number turns face cards into numbers

  def initialize(suit, value)
    @suit = suit
    @value = value
    case value
    when "Ace"
      @fake_value = 14
    when "Jack"
      @fake_value = 11
    when "Queen"
      @fake_value = 12
    when "King"
      @fake_value = 13
    else
      @fake_value = value.to_i
    end
  end

  def self.get_possible_values
    POSSIBLE_VALUES
  end

  def self.get_possible_suits
    POSSIBLE_SUITS
  end

  def display_card
    "#{value} of #{suit}"
  end

  def larger?(other_card)
    self.fake_value > other_card.fake_value
  end

end

# a_of_sp = Card.new("Spades", "Ace")
# three_of_di = Card.new("Diamonds", "3")
# binding.pry
# 0
