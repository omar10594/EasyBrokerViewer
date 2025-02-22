module EasyBrokerApi
  class Properties < Base
    def self.all(page: 1, limit: 10)
      response = get("/properties", query: { page: page, limit: limit })
      response.parsed_response
    end
  end
end
