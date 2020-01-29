# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0, :+)
end

def max_2_sum arr
  # YOUR CODE HERE
  arr.sort!.reverse!
  range = [2, arr.length].min
  sum = 0
  for i in 0...range do
    sum += arr[i]
  end
  sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  hash_val = Hash.new
  arr.each_with_index { |val, idx|
    if hash_val[n - val] != nil && hash_val[n - val] != idx
      return true
    end
    hash_val[val] = idx
  }
  false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def letter?(lookAhead)
  lookAhead =~ /[[:alpha:]]/
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s == "" || !letter?(s[0])
    return false
  end
  vowel = ['a', 'e', 'i', 'o', 'u']
  first = s[0].dup.downcase
  vowel.each { |vo|
  if vo == first 
    return false
  end
  }
  true
end


def number_or_nil(string)
  Integer(string || '')
rescue ArgumentError
  nil
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  num = number_or_nil(s)
  if (num == nil || num % 4 != 0)
    return false
  else
    return true
  end
end

# Part 3

class BookInStock
    attr_accessor :price, :isbn
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? or price <= 0
    @isbn = isbn
    @price = price
  end
  
  def price_as_string()
    ans = "$" + sprintf( "%0.02f", @price)
  end

end
