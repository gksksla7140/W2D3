require 'first_tdd'
require "rspec"

describe "remove_dups" do
  
  arr=[1,2,1,2]
  
  it "return is not duplicate" do 
    expect(remove_dups(arr)).to eq([1,2])
  end
  
  it " this method take only an array" do
    expect{ remove_dups(1)}.to raise_error(ArgumentError)
  end
  
  it "should not call uniq method" do
    expect(arr).not_to receive(:uniq)
    remove_dups(arr)
  end  
  
end 

describe "two_sum" do
  
  it "when there is no two sum" do
    expect(two_sum([])).to be_empty
  end 
  
  it "when there is two sum" do
    expect(two_sum([-1, 0, 2, -2, 1])).to eq([[0,4],[2,3]])
  end
  
end

describe "my_transpose" do 
  a = [[0, 1, 2],
    [3, 4, 5],
    [6, 7, 8] ]
  
  b = [[0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]]
  it "convert between the row-oriented and column-oriented representations" do 
    expect(my_transpose(a)).to eq(b)
  end
  
end

describe "stock_picker" do
  
  it "when there is no days return empty array" do
    expect(stock_picker([])).to be_empty
  end 
  
  it "when there is two sum" do
    expect(stock_picker([2,4,0,5])).to eq([2,3])
  end
  
end



    


