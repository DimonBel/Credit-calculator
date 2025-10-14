require_relative 'lib/offer_operations'

class CreditCalculator
  attr_accessor :credit_conditions, :credit_offers, :survey_data

  def load_credit_conditions(credit_conditions)
    @credit_conditions = credit_conditions
  end

  def load_offer_data(json_data)
    @credit_offers = json_data
  end

  def load_survey_results(survey_data)
    @survey_data = survey_data
  end

  def sort_offers_desc
    unless @credit_conditions
      puts 'credit conditions not specified'
      false
    end

    unless @credit_offers
      puts 'credit offers not specified'
      false
    end

    unless @survey_data
      puts 'survey data not specified'
      false
    end

    # все операции с кредитами вот тут
    # вернуть: отсортированый жсон (не хэш, а готовый жсон)
    offer_operations = OfferOperations.new
    offer_list_unsorted = offer_operations.create_offer_list(@credit_offers)
  end
end
