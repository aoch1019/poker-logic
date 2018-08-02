class CompareHands

  attr_reader :best_hands_array


  def initialize(best_hands_array)
    @best_hands_array = best_hands_array
  end


  def compare_pairs()
  end

  def find_best_hand_hierarchy_index
    best_hand_hierarchy = 0

    @best_hands_array.each do |best_hand_hash|
      if best_hand_hash[:hierarchy_index] > best_hand_hierarchy
        best_hand_hierarchy = best_hand_hash[:hierarchy_index]
      end
    end

    return best_hand_hierarchy
  end

  def tie?(hierarchy_index)
    counter = 0

    @best_hands_array.each do |best_hand_hash|
      if best_hand_hash[:hierarchy_index] == hierarchy_index
        counter += 1
      end
    end

    if counter == 1
      return true
    else
      return false
    end
  end

  def find_winner

    best_hand_hierarchy = find_best_hand_hierarchy_index

    if tie?(best_hand_hierarchy) == false
      return 



  end





end
