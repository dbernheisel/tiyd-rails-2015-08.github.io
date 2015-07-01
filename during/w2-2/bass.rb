class Bass
  def breathes_water
    true
  end

  def has_gills
    true
  end
end

module Instrument
  HARD_TO_PLAY = true

  class Bass
    def has_strings?
      true
    end
  end
end

bass = Instrument::Bass.new

puts "Are instruments hard to play?"
puts Instrument::HARD_TO_PLAY ? "Yes" : "No"
