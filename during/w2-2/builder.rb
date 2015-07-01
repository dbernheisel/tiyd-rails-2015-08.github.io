class Builder
  def initialize(name)
    @name = name
  end

  def build_house
    buy_land
    clear_land
    get_permits
    foundation
    frame
    electric
    walls
    roof
  end

  def get_permits
    get_septic_permit
    get_electical_permit
    ...
  end

  def get_electical_permit
    ...
  end

end

daisy = Builder.new("Daisy")
daisy.get_electrical_permit
