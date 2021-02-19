# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  _res =0
  for i in (0..arr.length)
    _res = _res + arr.at(i).to_i
  end
  return _res
  # YOUR CODE HERE
end

def max_2_sum(arr)
  if arr.length == 0
    return 0
  end
  if arr.length == 1
    return arr.at(0).to_i
  end
  
  _first = arr.at(0).to_i
  _second = arr.at(1).to_i
    #  puts arr
     # puts "TEST #{_first} and #{_second} is #{_first+_second}"
  for i in 2..arr.length-1
    if _first < arr.at(i).to_i or _second < arr.at(i).to_i
      if _first < _second
        _first = arr.at(i).to_i
      else
        _second = arr.at(i).to_i
      end
    end
   # puts "TEST #{_first} and #{_second} is #{_first+_second}. candidate was #{arr.at(i)} index was #{i}"
  
  end
  #puts "#{_first + _second}"
  return (_first + _second)
  
end
  # YOUR CODE HERE


def sum_to_n?(arr, n)
  for i in 0..arr.length-1
    for j in i+1..arr.length-1
     # puts "#{i} #{j}"
      if arr.at(i).to_i + arr.at(j).to_i == n
        
        
        return true
      end
    end 
  end 
  return false
  # YOUR CODE HERE
end

# Part 2

def hello(name)

  return "Hello, #{name}"
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE


  return (s =~ (/\A[A-Za-z]/) and s=~ (/\A[^aeiouAEIOU]/))
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE

  if (s =~ /[^0-1]/) != nil or s == ''
     
   return false
  end
  if s.length >=3
    
    _test = (s =~ /100\Z/)
    if _test == nil
      return false
    end 
    return true
  end 
  return true
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn, price)
    if (price <= 0)
      raise ArgumentError
    end 
    if (isbn =~ /[^0-9]^-/) != nil or isbn == ''
      raise ArgumentError
    end
 
    @price = price
    @isbn = isbn
  end 
  
  def isbn
    return @isbn
  end 
  
  def isbn=(input)
    @isbn = input
  end 
  
  def price
    return @price
  end 
  
  def price=(price)
    @price = price
  end 
  
  def price_as_string
    if(@price % 1 == 0)
      return "$#{@price}.00"
    end
    return "$#{@price.to_i}.#{(@price*100%100).to_i}"
  end
end
