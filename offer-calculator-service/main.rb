require 'bundler/setup'
require 'sinatra'
require 'sinatra/cross_origin'
require 'dotenv'
require_relative 'app/controllers/request_controller'
require_relative 'app/models/config_data'

configure do
  enable :cross_origin
end

before do
  response.headers['Access-Control-Allow-Origin'] = '*'
  response.headers['Access-Control-Allow-Methods'] = 'GET, PUT, OPTIONS'
  response.headers['Access-Control-Allow-Headers'] = 'Content-Type, Authorization, X-Requested-With'
  if request.content_type == 'application/json'
    body = request.body.read
    @json_params = JSON.parse(body) unless body.empty?
  end
end

Dotenv.load
PORT = ENV['PORT'].to_i

abort 'invalid port. set it up in .env file' if PORT < 0

set :port, PORT
set :bind, '0.0.0.0'
set :environment, :production

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
