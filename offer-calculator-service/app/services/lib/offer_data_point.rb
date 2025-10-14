class OfferDataPoint
  attr_reader :rate, :rate_fico,
              :dae, :dae_fico,
              :min_sum, :max_sum,
              :min_time_period, :max_time_period,
              :conditions
  attr_accessor :commission

  def initialize(rate, rate_fico,
                 dae, dae_fico,
                 min_sum, max_sum,
                 min_time_period, max_time_period,
                 conditions)
    @rate = rate
    @rate_fico = rate_fico
    @dae = dae
    @dae_fico = dae_fico
    @min_sum = min_sum
    @max_sum = max_sum
    @min_time_period = min_time_period
    @max_time_period = max_time_period
    @conditions = conditions
  end
end
