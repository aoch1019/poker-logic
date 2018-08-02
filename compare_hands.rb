require 'pry'

class CompareHands

  attr_reader :winner
  attr_reader :best_hands_array


  def initialize(best_hands_array)
    @best_hands_array = best_hands_array
    # This array consists of all players' best hand hashes
  end

  def find_best_hand_hierarchy_index
    largest_hierarchy_index = 0
    @best_hands_array.each do |best_hand_hash|
      if best_hand_hash[:hierarchy_index] > largest_hierarchy_index
        largest_hierarchy_index = best_hand_hash[:hierarchy_index]
      end
    end
    return largest_hierarchy_index
  end

  def get_best_hands_by_index(index)
    @best_hands_array.select do |best_hand_hash|
      index == best_hand_hash[:hierarchy_index]
    end
  end

  def compare_hand_details(hands_array)
    best_hand_hash = hands_array[0]
    best_hand_values = best_hand_hash[:details_array] #[14, 8, 6, ...]

    hands_array.each do |hands_hash|
      hands_hash[:details_array].each_with_index do |value, index|
        if value > best_hand_values[index]
          best_hand_hash = hands_hash
        elsif value == best_hand_values[index]
          next
        else
          break
        end
      end
    end

    winners_array = hands_array.select do |hands_hash|
      hands_hash[:details_array] == best_hand_values
    end ## handles edge case of a split pot

    # if winners_array.length > 1
    #   tied_winners = hands_array.select do |hands_hash|
    #     hands_hash == best_hand_hash
    #   end
    #   return winners_array ## handles edge case of a split pot
    # end

    return winners_array
  end

  def find_winner
    largest_hierarchy_index = find_best_hand_hierarchy_index
    best_hands = get_best_hands_by_index(largest_hierarchy_index)
    winner = compare_hand_details(best_hands)
    @winner = winner
  end

  def display_winner
    if winner.length > 1
      puts "It's a tie between:"
      winner.each do |hands_hash|
        puts "#{hands_hash[:player_hand].player.name}"
      end
    else
      puts "#{@winner[0][:player_hand].player.name} wins with a #{@winner[0][:hierarchy_value]}!"
      @winner[0][:player_hand].display
    end
  end


  # def tie?(hierarchy_index)
  #   counter = 0
  #
  #   @best_hands_array.each do |best_hand_hash|
  #     if best_hand_hash[:hierarchy_index] == hierarchy_index
  #       counter += 1
  #     end
  #   end
  #
  #   if counter == 1
  #     return true
  #   else
  #     return false
  #   end
  # end





end
