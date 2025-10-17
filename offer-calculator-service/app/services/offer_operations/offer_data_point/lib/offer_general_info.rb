class OfferGeneralInfo
  attr_accessor :credit_name_full, :bank_name, :credit_type, :conditions

  def initialize(credit_name_full, bank_name, credit_type, conditions)
    @credit_name_full = credit_name_full
    @bank_name = bank_name
    @credit_type = credit_type
    @conditions = conditions
  end
end