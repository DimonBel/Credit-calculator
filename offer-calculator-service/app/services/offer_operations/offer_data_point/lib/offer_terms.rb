class OfferTerms
  attr_accessor :min_sum, :max_sum, :min_time_period, :max_time_period

  def initialize(min_sum, max_sum, min_time_period, max_time_period)
    @min_sum = min_sum
    @max_sum = max_sum
    @min_time_period = min_time_period
    @max_time_period = max_time_period
  end
end