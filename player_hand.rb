require 'pry'
require_relative "./card"
require_relative "./player"

class PlayerHand

  attr_accessor :cards
  attr_reader :player

  @@all = []

  # HIERARCHY = ["HIGH CARD", "PAIR", "2 PAIR", "3 OF A KIND", "STRAIGHT", "FLUSH", "FULL HOUSE", "4 OF A KIND", "STRAIGHT FLUSH"]

  def initialize(player)
    @player = player
    @cards = player.cards
    @@all << self
  end

  def self.all
    @@all
  end

  def flop(card1, card2, card3)
    @cards << card1
    @cards << card2
    @cards << card3
  end

  def turn(card)
    @cards << card
  end

  def river(card)
    @cards << card
  end

  def display
    cards.each do |card|
      puts "#{card.value} of #{card.suit}"
    end
  end


  # def fake_values
  #   @cards.map do |card|
  #     card.fake_value
  #   end
  # end
  #
  #
  # def get_x_number_of_high_cards(number_of_cards)
  #
  #   if number_of_cards > @cards.length
  #     return "You've requested too many cards!"
  #   end
  #
  #   sorted_cards = @cards.sort_by do |card|
  #     card.fake_value
  #   end
  #
  #   binding.pry
  #
  #   return sorted_cards.reverse[1...number_of_cards]
  #
  # end
  #
  #
  # def pair?
  #
  #   pairs = []
  #
  #   sorted_values = self.fake_values.sort do |x,y|
  #     y <=> x
  #   end
  #
  #   sorted_values.each_with_index do |value, index|
  #     if index == (sorted_values.length - 1)
  #       break
  #     end
  #     if value == sorted_values[index + 1]
  #       pairs << value
  #     end
  #   end
  #
  #   pairs = pairs.uniq.sort.reverse
  #
  #   if pairs.length > 2
  #     return pairs[0..1]
  #   else
  #     pairs
  #   end
  #
  # end
  #
  #
  # def three_of_a_kind?
  #
  #   three_of_kind = []
  #
  #   sorted_values = self.fake_values.sort do |x,y|
  #     y <=> x
  #   end
  #
  #   sorted_values.each_with_index do |value, index|
  #     if index == (sorted_values.length - 2)
  #       break
  #     end
  #     if value == sorted_values[index + 1] && value == sorted_values[index + 2]
  #       three_of_kind << value
  #     end
  #   end
  #
  #   if three_of_kind == []
  #     return []
  #   else
  #     return [three_of_kind.uniq.sort[-1]]
  #   end
  #
  # end
  #
  #
  # def straight?
  #   fake_value_array = fake_values
  #
  #   if fake_value_array.include?(14) && fake_value_array.include?(2) &&
  #      fake_value_array.include?(3) && fake_value_array.include?(4) &&
  #      fake_value_array.include?(5) && fake_value_array.include?(6) == false
  #
  #      return {highest_value: 5}
  #   end
  #
  #   sorted_array = fake_value_array.sort.reverse
  #
  #   counter = 0
  #
  #   until counter >= sorted_array.length - 4
  #
  #     curr_value = sorted_array[counter]
  #     make_a_straight_with_curr_value = [curr_value, curr_value - 1, curr_value - 2,
  #                                        curr_value - 3, curr_value - 4]
  #
  #     if make_a_straight_with_curr_value == sorted_array[counter..counter + 4]
  #       return {highest_value: curr_value}
  #     end
  #
  #     counter += 1
  #   end
  #
  #   return {}
  #
  # end
  #
  #
  # def flush?
  #
  #   suits_array = @cards.map do |card|
  #     card.suit
  #   end
  #
  #   flush_suit = ""
  #
  #   Card.get_possible_suits.each do |suit|
  #     if suits_array.count(suit) >= 5
  #       flush_suit = suit
  #     end
  #   end
  #
  #   if flush_suit == ""
  #     return flush_suit
  #   else
  #     flush_fake_values = []
  #     @cards.each do |card|
  #       if card.suit == flush_suit
  #         flush_fake_values << card.fake_value
  #       end
  #     end
  #
  #     return {flush_suit => flush_fake_values.sort.reverse}
  #   end
  #
  # end
  #
  #
  # def full_house?
  #
  #   if pair?.length >= 2 && three_of_a_kind?.length > 0
  #     return {three_of_a_kind: three_of_a_kind?.first, pair: (pair? - three_of_a_kind?).first}
  #   else
  #     return {}
  #   end
  #
  # end
  #
  #
  # def find_best_hand
  #
  #   if self.full_house? != {}
  #     return {hierarchy_value: "FULL HOUSE", hierarchy_index: HIERARCHY.index("FULL HOUSE"), details: self.full_house?}
  #   elsif self.flush? != ""
  #     return {hierarchy_value: "FLUSH", hierarchy_index: HIERARCHY.index("FLUSH"), details: self.flush?}
  #   elsif self.straight? != {}
  #     return {hierarchy_value: "STRAIGHT", hierarchy_index: HIERARCHY.index("STRAIGHT"), details: self.straight?}
  #   elsif self.three_of_a_kind? != []
  #     return {hierarchy_value: "3 OF A KIND", hierarchy_index: HIERARCHY.index("3 OF A KIND"), details: self.three_of_a_kind?}
  #   elsif self.pair?.length >= 2
  #     return {hierarchy_value: "2 PAIR", hierarchy_index: HIERARCHY.index("2 PAIR"), details: self.pair?}
  #   elsif self.pair?.length == 1
  #     return {hierarchy_value: "PAIR", hierarchy_index: HIERARCHY.index("PAIR"), details: self.pair?}
  #   else
  #     return {hierarchy_value: "HIGH CARD", hierarchy_index: HIERARCHY.index("HIGH CARD"), details: self.get_x_number_of_high_cards(1)}
  #   end
  #
  # end

end #END OF CLASS


# card1 = Card.new("Spades", "Ace")
# card2 = Card.new("Diamonds", "8")
# card3 = Card.new("Clubs", "8")
# card4 = Card.new("Hearts", "Ace")
# card5 = Card.new("Diamonds", "4")
# hand.find_best_hand
# best_hand = hand.find_best_hand
# andrew = Player.new("Andrew", card1, card2)
# hand = PlayerHand.new(andrew)
# hand.flop(card3,card4,card5)

# card6 = Card.new("Spades", "10")
# card7 = Card.new("Diamonds", "Jack")
# card8 = Card.new("Clubs", "Queen")
# card9 = Card.new("Hearts", "King")
# card10 = Card.new("Diamonds", "Ace")
# card11 = Card.new("Diamonds", "9")
#
# och = Player.new("Och", card6, card7)
# hand2 = PlayerHand.new(och)
# hand2.flop(card8,card9,card10)
# hand2.turn(card11)
# straight_hash = hand2.straight?


# card12 = Card.new("Diamonds", "10")
# card13 = Card.new("Diamonds", "Jack")
# card14 = Card.new("Diamonds", "Queen")
# card15 = Card.new("Hearts", "King")
# card16 = Card.new("Diamonds", "Ace")
# card17 = Card.new("Diamonds", "9")
#
# och = Player.new("Och", card12, card13)
# hand3 = PlayerHand.new(och)
# hand3.flop(card14,card15,card16)
# hand3.turn(card17)
# hand3.flush?
#
# card12 = Card.new("Diamonds", "10")
# card13 = Card.new("Diamonds", "10")
# card14 = Card.new("Diamonds", "Queen")
# card15 = Card.new("Hearts", "9")
# card16 = Card.new("Diamonds", "10")
# card17 = Card.new("Diamonds", "9")
#
# och = Player.new("Och", card12, card13)
# hand3 = PlayerHand.new(och)
# hand3.flop(card14,card15,card16)
# hand3.turn(card17)
# hand3.full_house?
#
#
# binding.pry
# 0
