require 'sinatra'
require 'sinatra/json'
require 'json'

get '/' do
  erb :index
end

post '/api/calc' do
  data = JSON.parse(request.body.read) rescue {}

  a  = data['a'].to_f
  b  = data['b'].to_f
  op = data['op']

  result =
    case op
    when '+' then a + b
    when '-' then a - b
    when '*' then a * b
    when '/' then b.zero? ? "error" : a / b
    else "unknown"
    end

  json result: result
end
