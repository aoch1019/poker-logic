require 'pry'
require_relative "./card"
require_relative "./player"
require_relative "./player_hand"
require_relative "./make_best_hand"
require_relative "./deck"
require_relative "./compare_hands"


# MAKE 2 PAIR

puts ""
puts "Making a 2-pair..."
puts ""

card1 = Card.new("Spades", "Ace")
card2 = Card.new("Diamonds", "8")
card3 = Card.new("Clubs", "8")
card4 = Card.new("Hearts", "Ace")
card5 = Card.new("Diamonds", "4")

andrew = Player.new("Andrew", card1, card2)
hand = PlayerHand.new(andrew)



hand.flop(card3,card4,card5)
make_hand = MakeBestHand.new(hand)
best_hand = make_hand.find_best_hand

hand.display

puts best_hand[:hierarchy_value]
puts "*" * 80



# MAKE STRAIGHT

puts ""
puts ""
puts "Making a Straight..."
puts ""

card6 = Card.new("Spades", "10")
card7 = Card.new("Diamonds", "4")
card8 = Card.new("Clubs", "Queen")
card9 = Card.new("Hearts", "King")
card10 = Card.new("Diamonds", "Ace")
card11 = Card.new("Diamonds", "Jack")

marky = Player.new("marky", card6, card7)
hand2 = PlayerHand.new(marky)


hand2.flop(card8,card9,card10)
make_hand2 = MakeBestHand.new(hand2)
hand2.turn(card11)
best_hand2 = make_hand2.find_best_hand

hand2.display

puts best_hand2[:hierarchy_value]
puts "*" * 80



# MAKE FLUSH

puts ""
puts ""
puts "Making a Flush..."
puts ""

card12 = Card.new("Diamonds", "10")
card13 = Card.new("Diamonds", "2")
card14 = Card.new("Hearts", "Queen")
card15 = Card.new("Diamonds", "8")
card16 = Card.new("Diamonds", "Ace")
card17 = Card.new("Diamonds", "4")

ricky = Player.new("Ricky", card12, card13)
hand3 = PlayerHand.new(ricky)

make_hand3 = MakeBestHand.new(hand3)
hand3.flop(card14,card15,card16)
hand3.turn(card17)
best_hand3 = make_hand3.find_best_hand

hand3.display

puts best_hand3[:hierarchy_value]
puts "*" * 80



# MAKE FULL HOUSE

puts ""
puts ""
puts "Making a Full House..."
puts ""

card18 = Card.new("Diamonds", "10")
card19 = Card.new("Spades", "10")
card20 = Card.new("Diamonds", "Queen")
card21 = Card.new("Hearts", "9")
card22 = Card.new("Clubs", "10")
card23 = Card.new("Diamonds", "9")

timmy = Player.new("Timmy", card18, card19)
hand4 = PlayerHand.new(timmy)

make_hand4 = MakeBestHand.new(hand4)
hand4.flop(card20,card21,card22)
hand4.turn(card23)
best_hand4 = make_hand4.find_best_hand

hand4.display

puts best_hand4[:hierarchy_value]
puts "*" * 80



# MAKE 4 OF A KIND

puts ""
puts ""
puts "Making a 4 of a kind..."
puts ""

card24 = Card.new("Diamonds", "10")
card25 = Card.new("Spades", "4")
card26 = Card.new("Diamonds", "Queen")
card27 = Card.new("Hearts", "4")
card28 = Card.new("Clubs", "4")
card29 = Card.new("Diamonds", "4")

tommy = Player.new("Tommy", card24, card25)
hand5 = PlayerHand.new(tommy)

make_hand5 = MakeBestHand.new(hand5)
hand5.flop(card26,card27,card28)
hand5.turn(card29)
best_hand5 = make_hand5.find_best_hand

hand5.display

puts best_hand5[:hierarchy_value]
puts "*" * 80


# MAKE A STRAIGHT FLUSH

puts ""
puts ""
puts "Making a Straight Flush..."
puts ""

card30 = Card.new("Spades", "10")
card31 = Card.new("Spades", "Jack")
card32 = Card.new("Spades", "Queen")
card33 = Card.new("Spades", "King")
card34 = Card.new("Spades", "3")
card35 = Card.new("Spades", "Ace")

jonny = Player.new("Jonny", card30, card31)
hand6 = PlayerHand.new(jonny)

make_hand6 = MakeBestHand.new(hand6)
hand6.flop(card32,card33,card34)
hand6.turn(card35)
best_hand6 = make_hand6.find_best_hand

hand6.display

puts best_hand6[:hierarchy_value]
puts "*" * 80



## COMPARE HANDS

puts ""
puts ""
puts "Comparing two hands..."
puts ""


hands_to_compare = CompareHands.new([best_hand2, best_hand3])
hands_to_compare.find_winner
hands_to_compare.display_winner

puts "*" * 80
# binding.pry
# 0


puts ""
puts ""
puts "Comparing two hands..."
puts ""


hands_to_compare2 = CompareHands.new([best_hand, best_hand4])
hands_to_compare2.find_winner
hands_to_compare2.display_winner

puts "*" * 80

puts ""
puts ""
puts "Comparing two hands..."
puts ""


hands_to_compare3 = CompareHands.new([best_hand5, best_hand6])
hands_to_compare3.find_winner
hands_to_compare3.display_winner

puts "*" * 80


puts ""
puts ""
puts "Comparing two hands that are tied..."
puts ""

brian = Player.new("Brian", card18, card19)
hand7 = PlayerHand.new(brian)

make_hand7 = MakeBestHand.new(hand7)
hand7.flop(card20,card21,card22)
hand7.turn(card23)
best_hand7 = make_hand7.find_best_hand
hands_to_compare4 = CompareHands.new([best_hand7, best_hand4])
hands_to_compare4.find_winner
hands_to_compare4.display_winner

puts "*" * 80
