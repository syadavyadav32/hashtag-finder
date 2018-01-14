require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key        = "b9eRCR9aXgs0tyA1jeThyiZKT"
  config.consumer_secret     = "eDgns2sEJpqiPhZesUPpQHqzSIygQCBYRnJBazNlYUatELDd1b"
  config.access_token        = "163073678-O5Vcuf18JUGgwZqFmkrNshdNibsVXquVXLUSVHpA"
  config.access_token_secret = "rwbVO6lHMANFyw0gRuRwbbOl4ibi7fDQQbY8b4t6VvcRx"
end