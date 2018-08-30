class Hand
  attr_reader :points
  
  def initialize(cards)
    raise ArgumentError unless cards.length == 5
    @cards = cards 
    @points
  end
  
  def hand_value
    
  end
  
  def seq_value
    arr_value = []
    @cards.each do|card|
      arr_value << card.value
    end
    arr_value.sort!
    arr_value.each_with_index do |el,idx|
      return false unless ( arr_value.first + idx ) == el 
    end
    true
  end
  
  def royal_flush
    counter = 0
    
  end
  
end