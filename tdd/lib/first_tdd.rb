def hello_world
  "Hello, World!"
end

def my_uniq(arr)
  unique_elements = []
  arr.each { |ele| unique_elements << ele if !unique_elements.include?(ele) }
  unique_elements
end

def two_sum(arr)
  res = []
  (0...arr.length).each do |i1|
    (0...arr.length).each do |i2|
      if i2 > i1 && arr[i1] + arr[i2] == 0
        # arr[i1] > arr[i2] ? res << [i2, i1] : res << [i1, i2]
        res << [i1, i2]
      end
    end
  end
  res
end

def my_transpose(arr)
  l = arr.length
  res = Array.new(l) { Array.new(l) }
  (0...arr.length).each do |i1|
    (0...arr.length).each do |i2|
      res[i2][i1] = arr[i1][i2]
    end
  end
  res
end

def stock_picker(arr)
  highest_exchange = 0
  highest_pair = []
  (0...arr.length).each do |i1|
    (0...arr.length).each do |i2|
      if i2 > i1 && arr[i2] - arr[i1] > highest_exchange
        highest_exchange = arr[i2] - arr[i1] 
        highest_pair = [i1, i2]
      end
    end
  end
  highest_pair
end


