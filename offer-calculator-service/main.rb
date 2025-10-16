require 'bundler/setup'
require 'sinatra'
require_relative 'app/controllers/request_controller'
require_relative 'app/models/config_data'

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
