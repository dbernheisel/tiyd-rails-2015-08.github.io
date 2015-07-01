class Album
  attr_reader :name, :price

  def initialize(name, price=20.0)
    @name = name
    @price = price
  end

  def discount(discount_ratio)
    @price *= (1-discount_ratio)
  end

end
