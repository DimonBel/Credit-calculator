require 'bundler/setup'
require 'sinatra'
require_relative 'app/controllers/request_controller'

get '/' do
  'Offer Calculator Service Up'
end

post '/process' do
  content_type :json
  RequestController.new.process_request(request.body.read)
end
