require 'httparty'

class DayForecast
  def initialize(data)
    @data = data
  end

  def day
    @data["date"]["weekday"]
  end

  def month
    @data["date"]["monthname"]
  end

  def day_date_number
    @data["date"]["day"]
  end

  def high
    @data["high"]["fahrenheit"]
  end

  def low
    @data["low"]["fahrenheit"]
  end

  def conditions
    @data["conditions"]
  end
end


class TenDayForecast

  def initialize(zip)
    @zip = zip
    page = get_data
    @days = page["forecast"]["simpleforecast"]["forecastday"].map {|d| DayForecast.new(d)}
  end

  def conditions(index)
    @days[index].conditions
  end

  def get_data
    HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/forecast10day/q/#{@zip}.json")
  end

  def print
    puts "Your 10 Day Forecast"
    puts "*" * 75
    @days.each do |d|
      puts "#{d.day}\s\s\t #{d.month} #{d.day_date_number}   High: #{d.high}  Low: #{d.low}   #{d.conditions}. "
      puts "-" * 75
    end
    puts "*" * 75
  end
end
