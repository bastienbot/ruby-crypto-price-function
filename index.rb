require 'httparty'
require 'json'

def handler(event:, context:)
    obj = HTTParty.get("https://api.cryptonator.com/api/ticker/#{event["from"]}-#{event["to"]}")
    JSON.parse(obj.body)
end

puts handler(event:{ "from"=>"btc", "to"=>"usd" }, context:{})


