def fizzbuzz(number)
  result = ""
  result << "Fizz" if number % 3 == 0
  result << "Buzz" if number % 5 == 0
  return number if result == ""
  result
end
