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

  # it "raises an argument error when given a non-array argument"
  #   expect {my_uniq(5)}.to raise_error(ArgumentError)
  # end
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
  arr = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]
  res = [
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
  ]
  it "convert a matrix between the row-oriented and column-oriented representations" do
    expect(my_transpose(arr)).to eq(res)
  end
end
