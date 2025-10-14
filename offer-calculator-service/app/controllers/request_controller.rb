require_relative '../models/config_data'
require_relative '../services/credit_calculator'
require_relative '../services/request_processor'
require_relative '../services/survey_data_fetcher'

class RequestController
  def handle_request(request_body)
    # parse and validate request
    valid_request, credit_conditions = RequestProcessor.new.process_request(request_body)
    unless valid_request
      puts 'Invalid request body'
      return
    end

    # parse and validate survey results
    valid_data, survey_data = SurveyDataFetcher.new.get_survey_data
    unless valid_data
      puts 'Invalid request body'
      return
    end

    # load data from json
    json_data = ConfigData.load

    # find best offers
    calculator = CreditCalculator.new
    calculator.load_credit_conditions(credit_conditions)
    calculator.load_survey_results(survey_data)
    calculator.load_offer_data(json_data)

    sorted_offers = calculator.sort_offers_desc

    nil unless sorted_offers
  end
end