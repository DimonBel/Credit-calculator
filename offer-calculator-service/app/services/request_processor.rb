require 'json'

class RequestProcessor
  def validate_json(json_data)
    return false unless json_data.is_a?(Hash)
    return false unless json_data.key?('sum') and json_data['sum'].is_a?(String) and json_data['sum'].match?(/\A\d+\z/)
    return false unless json_data.key?('months') and json_data['months'].is_a?(String) and json_data['months'].match?(/\A\d+\z/)
    return false unless json_data.key?('type') and json_data['type'].is_a?(String)
    true
  end

  def process_request(request_body)
    json_data = JSON.parse(request_body)
    valid_request = validate_json(json_data)
    [valid_request, json_data]
  end
end

# RequestProcessor.new.process_request('{"sum": "35000", "months": "12", "type": "fixed"}')