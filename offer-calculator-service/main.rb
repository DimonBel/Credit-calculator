require 'bundler/setup'
require 'sinatra'
require_relative 'app/controllers/request_controller'
require_relative 'app/models/config_data'

# enable cors for dev
before do
  response.headers['Access-Control-Allow-Origin'] = '*'
  response.headers['Access-Control-Allow-Methods'] = 'GET, POST, OPTIONS'
  response.headers['Access-Control-Allow-Headers'] = 'Content-Type'
end

options '*' do
  response.headers['Access-Control-Allow-Origin'] = '*'
  response.headers['Access-Control-Allow-Methods'] = 'GET, POST, OPTIONS'
  response.headers['Access-Control-Allow-Headers'] = 'Content-Type'
  200
end

get '/' do
  'Offer Calculator Service Up'
end

# load data.json from disk
offer_data_json = ConfigData.load

post '/process' do
  content_type :json

  request_controller = RequestController.new
  request_controller.load_offer_data(offer_data_json)
  response = request_controller.handle_request(request.body.read)
end

# # Test endpoint: echo received JSON
# post '/test' do
#   content_type :json
#   begin
#     data = JSON.parse(request.body.read)
#     puts "Received JSON: #{data}"  # prints to server console
#     { status: 'ok', received: data }.to_json
#   rescue JSON::ParserError => e
#     status 400
#     { error: 'Invalid JSON', message: e.message }.to_json
#   end
# end
