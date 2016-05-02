# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  finalSum=0
  arr.each do |i|
  	finalSum+=i
  end
  return finalSum
end

def max_2_sum arr
  if arr.empty? 
  	return 0
  elsif arr.length == 1
  	return arr[0]
  else
  	arr.sort!
  	return arr[arr.length-1]+arr[arr.length-2]
  end
end

def sum_to_n? arr, n
  size=arr.length
  for i in 0...size
  	for j in i+1...size
  		if arr[i]+arr[j] == n
  			return true
  		end
  		j+=1
  	end
  	i+=1
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, "+name
end

def starts_with_consonant? s
  s.downcase!
  return (/[ueoai]/=~s[0]) == nil && (/[a-z]/=~s[0]) != nil ? true : false
end

def binary_multiple_of_4? s
  if s=~/^[01]+$/ 
  	return Integer(s) % 4 == 0 ? true : false
  else
  	return false
  end
end

# Part 3

class BookInStock
	def initialize(isbn,price)
		@isbn = isbn
		@price = price
		if isbn=="" || price <= 0.0
			raise ArgumentError
		end
	end

	def isbn
		@isbn
	end

	def price
		@price
	end

	def isbn=(new_isbn)
		@isbn=new_isbn
	end

	def price=(new_price)
		@price=new_price
	end

	def price_as_string
		return "$"+'%.2f' % ((@price * 100).round / 100.0)
	end
end
