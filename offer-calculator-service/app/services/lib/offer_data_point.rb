class OfferDataPoint
  attr_accessor :credit_name_full, :bank_name, :credit_type, :min_time_period, :max_time_period,
                :min_sum, :max_sum, :rate, :dae, :commission, :commission_low,
                :commission_high, :commission_threshold, :commission_annual, :conditions

  def initialize
    meets_offer_conditions = true
  end
end
