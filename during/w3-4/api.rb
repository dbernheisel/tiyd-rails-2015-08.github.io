require 'httparty'

class ConditionsSummary
  def initialize(zip)
    @page = HTTParty.get("http://api.wunderground.com/api/#{ENV["WUNDERGROUND_KEY"]}/conditions/q/#{zip}.json")
  end

  def fahrenheit
    @page["current_observation"]["temp_f"]
  end
end

summary = ConditionsSummary.new(27278)

summary.fahrenheit
