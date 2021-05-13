require 'first_tdd'

describe "#hello_world" do
  it "returns 'Hello, World!'" do
    expect(hello_world).to eq("Hello, World!")
  end
end

describe "#my_uniq" do
  it "removes all duplicates from an array" do
    expect(my_uniq([1,2,3,1,2])).to eq([1,2,3])
  end
end

describe "#two_sum" do
  it "finds all pairs of positions where the elements at those positions sum to zero" do
    expect(two_sum([-1, 0, 2, -2, 1])).to eq([[0, 4], [2, 3]])
  end

  it "array of pairs to be sorted 'dictionary-wise'" do
    expect(two_sum([-1, 0, 2, -2, 1])).to eq([[0, 4], [2, 3]])
  end
end

describe "#my_transpose" do
  arr = [ [0, 1, 2], [3, 4, 5], [6, 7, 8] ]
  res = [ [0, 3, 6], [1, 4, 7], [2, 5, 8] ]
  it "convert a matrix between the row-oriented and column-oriented representations" do
    expect(my_transpose(arr)).to eq(res)
  end
end

describe "#stock_picker" do
  stocks = [100, 120, 4000, 545, 12, 200, 300, 221]
  # it "takes an array (arr) of stock prices" do
  #   expect(stock_picker)
  # end

  it "outputs the most profitable pair of days on which to first buy the stock and then sell the stock" do
    expect(stock_picker(stocks)).to eq([0, 2])
  end
end

describe "#towers_of_hanoi" do
  it "keep three arrays, which represent the piles of discs"
  it "have an array of discs that should each be represented by their size"
  it "in a "
end