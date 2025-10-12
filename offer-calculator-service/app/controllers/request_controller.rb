require 'json'
require_relative '../models/config_data'

class RequestController
  def process_request(request_body)
    # запарсить входящий запрос

    # загрузить данные из жсона
    json_data = ConfigData.load

    # запросить результаты опросника
    # посчитать офферы на основе данных
  end
end