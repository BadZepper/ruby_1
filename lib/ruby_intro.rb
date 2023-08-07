# When done, submit this entire file to the autograder.

## Part 1
def sum (array)
  # Check if the array is empty
return 0 if array.empty?

# Calculate the sum using the reduce method
array.reduce(0, :+)
end

def max_2_sum(array)
  # Check if the array is empty
  return 0 if array.empty?

  # If the array has only one element, return that element
  return array.first if array.length == 1

  # Sort the array in descending order and take the sum of the two largest elements
  sorted_array = array.sort { |a, b| b <=> a }
  sorted_array[0] + sorted_array[1]
end

def sum_to_n?(array, n)
  return false if array.empty? # If the array is empty, return false by definition

  # Create a hash to store the elements as keys and their corresponding complements (n - element) as values
  complements = {}

  array.each do |num|
    return true if complements[num] # If the complement exists in the hash, a pair of elements sum to n
    complements[n - num] = true     # Store the complement of the current element in the hash
  end

  false # If no pair is found, return false
end


# Part 2

def hello(name)
  "Hello, #{name}"
end
def starts_with_consonant?(s)
  # Check if the string is empty or nil
  return false if s.nil? || s.empty?

  # Convert the string to lowercase for case-insensitive comparison
  s = s.downcase

  # Check if the first character of the lowercase string is a consonant (non-vowel)
  consonants = /^[bcdfghjklmnpqrstvwxyz]/i
  s.match?(consonants)
end
def binary_multiple_of_4?(s)
  # Check if the string is empty or nil
  return false if s.nil? || s.empty?

  # Check if the string contains only 0s and 1s
  return false unless s.match?(/^[01]+$/)

  # Check if the binary number is a multiple of 4 (ends with '00')
  s.end_with?('00')
end

  

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    if isbn.empty?
      raise ArgumentError, "ISBN number cannot be empty."
    end

    if price <= 0
      raise ArgumentError, "Price must be greater than zero."
    end

    @isbn = isbn
    @price = price.to_f
  end

  def price_as_string
    "$%.2f" % price
  end
end

