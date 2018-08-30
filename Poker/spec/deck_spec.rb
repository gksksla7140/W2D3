require "deck"
require "rspec"

describe "make sure cards initialize with initialize(symbol, value, color)" do
  subject(:card) {Cards.new("symbol", 1, :red)}
  it "return symbol after initialize" do 
    expect(card.symbol).to eq("symbol") 
  end
  it "return value after initialize" do 
    expect(card.value).to eq(1) 
  end
  it "return color after initialize" do 
    expect(card.color).to eq(:red) 
  end
  
end