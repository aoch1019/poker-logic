require 'pry'
require_relative "./card"
require_relative "./player"
require_relative "./player_hand"
require_relative "./make_best_hand"
require_relative "./deck"


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

puts best_hand
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

och = Player.new("Och", card6, card7)
hand2 = PlayerHand.new(och)


hand2.flop(card8,card9,card10)
make_hand2 = MakeBestHand.new(hand2)
hand2.turn(card11)
best_hand2 = make_hand2.find_best_hand

hand2.display

puts best_hand2
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

aoch = Player.new("Och", card12, card13)
hand3 = PlayerHand.new(aoch)

make_hand3 = MakeBestHand.new(hand3)
hand3.flop(card14,card15,card16)
hand3.turn(card17)
best_hand3 = make_hand3.find_best_hand

hand3.display

puts best_hand3
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

andy = Player.new("Och", card18, card19)
hand4 = PlayerHand.new(andy)

make_hand4 = MakeBestHand.new(hand4)
hand4.flop(card20,card21,card22)
hand4.turn(card23)
best_hand4 = make_hand4.find_best_hand

hand4.display

puts best_hand4
puts "*" * 80



# MAKE 4 OF A KIND

puts ""
puts ""
puts "Making a 4 of a kind..."
puts ""

card18 = Card.new("Diamonds", "10")
card19 = Card.new("Spades", "4")
card20 = Card.new("Diamonds", "Queen")
card21 = Card.new("Hearts", "4")
card22 = Card.new("Clubs", "4")
card23 = Card.new("Diamonds", "4")

andy = Player.new("Och", card18, card19)
hand4 = PlayerHand.new(andy)

make_hand4 = MakeBestHand.new(hand4)
hand4.flop(card20,card21,card22)
hand4.turn(card23)
best_hand4 = make_hand4.find_best_hand

hand4.display

puts best_hand4
puts "*" * 80


# MAKE A STRAIGHT FLUSH

puts ""
puts ""
puts "Making a Straight Flush..."
puts ""

card18 = Card.new("Spades", "10")
card19 = Card.new("Spades", "Jack")
card20 = Card.new("Spades", "Queen")
card21 = Card.new("Spades", "King")
card22 = Card.new("Spades", "3")
card23 = Card.new("Spades", "Ace")

andy = Player.new("Och", card18, card19)
hand4 = PlayerHand.new(andy)

make_hand4 = MakeBestHand.new(hand4)
hand4.flop(card20,card21,card22)
hand4.turn(card23)
make_hand4.straight_flush?
best_hand4 = make_hand4.find_best_hand

hand4.display

puts best_hand4
puts "*" * 80
