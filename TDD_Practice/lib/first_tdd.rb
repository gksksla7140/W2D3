def remove_dups(arr)
  raise ArgumentError  unless arr.is_a?(Array)
  result=[]
  arr.each {|x| result << x unless result.include?(x)}
  result
  
end

def two_sum(arr)
  result=[]
  (0...arr.length-1).each do |i|
    (i+1...arr.length).each do |j|
      result.push([i,j]) if arr[i]+arr[j]==0
    end 
  end 
  result
  
  
end

def my_transpose(arr)
  result = Array.new(arr.length){[]}
  i =0
  while i < arr.length
    j=0
    while j<arr.length
        result[i][j] = arr[j][i]
      j+=1
    end
    i+=1
  end
  result
end

def stock_picker(arr)
  first = 0
  last = 1
  stock_max = (arr[0..1].last - arr[0..1].first)
  i =0
  while i < arr.length-1
    j=i+1
    while j<arr.length
        first,last = i,j if (arr[i..j].last - arr[i..j].first) > stock_max
      j+=1
    end
    i+=1
  end
  [first,last]
end