require 'json'
require_relative '../models/config_data'
require_relative '../services/credit_calculator'

class RequestController
  def process_request(request_body)
    # запарсить входящий запрос

    # загрузить данные из жсона
    json_data = ConfigData.load

    # запросить результаты опросника

    # посчитать офферы на основе данных
    calculator = CreditCalculator.new
    calculator.get_offer_data(json_data)
  end
end