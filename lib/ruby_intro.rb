# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  if arr.length == 0
    return 0
  else
    sum = 0
    arr.each do |x|
      sum += x
    end
    return sum
  end
end

def max_2_sum(arr)
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    sum1 = -1*(1/0.0)
    sum2 = -1*(1/0.0)
    arr.each do |x|
      if x > sum1
        sum2 = sum1
        sum1 = x
      elsif x > sum2
        sum2 = x 
      end 
    end 
    return sum1 + sum2
  end
end

def sum_to_n?(arr, n)
  if arr.length <= 1
    return false
  else
    for i in 0..arr.length-2
      for j in i+1..arr.length-1
        if arr[i]+arr[j] == n
          return true
        end 
      end 
    end 
    return false 
  end
end

# Part 2

def hello(name)
  return "Hello, #{name}"
end

def starts_with_consonant?(s)
  return s.length > 0 && s[0][/[a-zA-Z]+/] == s[0] && s[0] != "a" && s[0] != "A" && s[0] != "e" && s[0] != "E" && s[0] != "i" && s[0] != "I" && s[0] != "o" && s[0] != "O" && s[0] != "u" && s[0] != "U"
end

def binary_multiple_of_4?(s)
  if s.length == 0
    return false
  end
  sum = 0
  multiple = 0
  while s.length > 0
    if s[s.length-1] != "1" && s[s.length-1] != "0"
      return false
    end
    if s[s.length-1] == "1"
      sum += 2**multiple
    end
    multiple += 1
    s = s[0,s.length-1]
  end
  return sum%4 == 0
end

# Part 3

class BookInStock
  def initialize(i,p)
    raise ArgumentError.new("Invalid Book") if i == "" || p <= 0
    @isbn = i
    @price = p
  end
  
  def isbn
    @isbn
  end 
  def price 
    @price 
  end 
  
  def isbn=(i)
    @isbn = i 
  end 
  def price=(p)
    @price = p
  end 
  
  def price_as_string
    return "$%0.2f" % [@price]
  end
end
