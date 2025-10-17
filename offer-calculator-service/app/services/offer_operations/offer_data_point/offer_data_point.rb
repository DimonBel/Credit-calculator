require_relative 'lib/offer_general_info'
require_relative 'lib/offer_terms'
require_relative 'lib/offer_rates'
require_relative 'lib/offer_commission'

class OfferDataPoint
  attr_accessor :general_info, :terms, :rates, :commission, :meets_offer_terms

  def set_general_info(credit_name_full, bank_name, credit_type, conditions)
    @general_info = OfferGeneralInfo.new(credit_name_full, bank_name, credit_type, conditions)
  end

  def set_terms(min_sum, max_sum, min_time_period, max_time_period)
    @terms = OfferTerms.new(min_sum, max_sum, min_time_period, max_time_period)
  end

  def set_rates(rate, dae)
    @rates = OfferRates.new(rate, dae)
  end

  def set_commission(commission, commission_low, commission_high, commission_threshold, commission_annual)
    @commission = OfferCommission.new(commission, commission_low, commission_high, commission_threshold, commission_annual)
  end

  def validate_offer
    # @meets_offer_terms = check smth
    # check that attributes are not nil
  end
end
