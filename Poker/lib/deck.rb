class Cards
  attr_accessor :symbol, :value, :color
  
  def initialize(symbol, value, color)
    @symbol = symbol
    @value = value
    @color = color
  end
  
end


class Deck
  attr_accessor :deck
  def initialize()
    @deck = Array.new()
    fill_deck
    @deck.shuffle!
  end
  
  def fill_deck
    i = 2
    while i < 15
        @deck << Cards.new('♥️', i, :red)
        @deck << Cards.new('♦️', i, :red)
        @deck << Cards.new('♣️', i, :black)
        @deck << Cards.new('♠️', i, :black)
      i+=1
    end
  end
  
end

if __FILE__== $PROGRAM_NAME
  
  c= Deck.new 
  p c.deck.count
end 