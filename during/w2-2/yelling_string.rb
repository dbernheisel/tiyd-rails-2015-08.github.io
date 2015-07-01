class YellingString


  def initialize(string)
    @string = string.upcase
  end

  def <<(other)
    @string << other.upcase
  end

  def to_s
    @string
  end

  def reverse
    @string.reverse
  end

end

mason = YellingString.new("Mason")
mason << " Matthews"
puts mason.reverse
