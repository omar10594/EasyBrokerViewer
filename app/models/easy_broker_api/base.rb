module EasyBrokerApi
  class Base
    include HTTParty
    base_uri ENV["EASYBROKER_API_URL"]
    headers "Content-Type" => "application/json", "X-Authorization" => ENV["EASYBROKER_API_KEY"]
  end
end
