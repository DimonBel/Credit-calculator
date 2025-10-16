require_relative 'offer_data_point'

class OfferOperations
  def create_offer_list(credit_offers)
    offer_list = []

    credit_offers.each do |credit_offer|
      offer_obj = OfferDataPoint.new

      offer_obj.credit_name_full = credit_offer['credit_name_full']
      offer_obj.bank_name = credit_offer['bank_name']
      offer_obj.credit_type = credit_offer['credit_type']
      offer_obj.min_time_period = credit_offer['min_time_period']
      offer_obj.max_time_period = credit_offer['max_time_period']
      offer_obj.min_sum = credit_offer['min_sum']
      offer_obj.max_sum = credit_offer['max_sum']
      offer_obj.rate = credit_offer['rate']
      offer_obj.dae = credit_offer['dae']
      offer_obj.commission = credit_offer['commission']
      offer_obj.commission_low = credit_offer['commission_low']
      offer_obj.commission_high = credit_offer['commission_high']
      offer_obj.commission_threshold = credit_offer['commission_threshold']
      offer_obj.commission_annual = credit_offer['commission_annual']
      offer_obj.conditions = credit_offer['conditions']

      offer_list << offer_obj
    end

    offer_list
  end

  def calc_monthly_pay(offer_list)

  end
end