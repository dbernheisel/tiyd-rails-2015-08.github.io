require 'minitest/autorun'
require 'minitest/pride'
require 'byebug'
require './startup'

require 'json'

class SunRiseSet
  private def get_data
    JSON.parse(File.open("astronomy.json").read)
  end
end

class WeatherReport < MiniTest::Test

  def test_get_sunrise_sunset_time
    sun_one = SunRiseSet.new(27513)
    assert sun_one.sun_time("sunrise").match(/6\:05/)
  end

end
