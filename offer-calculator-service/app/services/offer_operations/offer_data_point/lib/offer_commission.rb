class OfferCommission
  attr_accessor :commission, :commission_low, :commission_high,
                :commission_threshold, :commission_annual

  def initialize(commission, commission_low, commission_high, commission_threshold, commission_annual)
    @commission = commission
    @commission_low = commission_low
    @commission_high = commission_high
    @commission_threshold = commission_threshold
    @commission_annual = commission_annual
  end
end