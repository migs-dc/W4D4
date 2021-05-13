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


class TowersOfHanoi 
  attr_reader :towers
  def initialize
    @towers = [[4, 3, 2, 1], [] , [] ]

  end

  def won?
    @towers[-1] == [4,3,2,1]

  end

  def move(input)
    x, y = input
    if towers[y].empty? || towers[y][-1] > towers[x][-1]
      disc = towers[x].pop
      towers[y].push(disc)
    else
      "Bad input!"
    end

  end

  def play
    puts "Playing Towers of Hanoi"
    until won?
      print towers
      puts
      puts "Please enter a move, separated by a comma"
      input = gets.chomp.split(",").map {|number| number.to_i}
      move(input)  # "1, 1" becomes [1, 1]
    end
    puts "Congrats!"
  end

end

example = TowersOfHanoi.new
example.play