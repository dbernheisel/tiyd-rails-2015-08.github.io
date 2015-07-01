# How to use a block

class Array
  def translate
    new_array = []
    self.each do |item|
      new_array << yield(item)
    end
    new_array
  end
end

var = ["Dog", "Perro", "Hund"].translate do |word|
  word.upcase
end

puts var
