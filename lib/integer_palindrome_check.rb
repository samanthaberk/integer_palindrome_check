# Returns true if the input positive integer number forms a palindrome. Returns false otherwise.
require 'pry'
def is_palindrome(number) #1223221
  if number.nil? || number < 0
    return false
  end

  if number < 10
    return true
  end

  reverse = 0
  original_number = number
  while number > 0 #123
    remainder = number % 10
    reverse = reverse * 10 + remainder
    number /= 10
  end
  if reverse == original_number
    return true
  else
    return false
  end

end
