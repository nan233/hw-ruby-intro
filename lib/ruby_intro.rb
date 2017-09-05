# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  res = 0
  for i in arr
    res += i
  end
  res
end

def max_2_sum arr
  res=0
  if arr.length==1
    res = arr[0]
  elsif arr.length>1
    num = arr.max(2)
    res = sum(num)
  end
  res
end

def sum_to_n? arr, n
  res = []
  for i in arr.combination(2).to_a
    res += [sum(i)]
  end
  res.find{|x| x==n}!=nil
end

# Part 2

def hello(name)
  "Hello, "+name
end

def starts_with_consonant? s
  /^[^aeiou\W]/i.match(s) != nil
end

def binary_multiple_of_4? s
  s.count("01")==s.length && /00$/.match(s)!=nil || s=="0"
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    if isbn=="" || price<=0
      raise ArgumentError
    else
      @isbn = isbn
      @price = price
    end
  end
  
  attr_accessor :isbn
  attr_accessor :price
  
  def price_as_string
    '$%.2f' % @price
  end
end
