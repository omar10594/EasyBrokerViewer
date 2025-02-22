require "test_helper"
require "lib/vcr"

class EasyBrokerApi::PropertiesTest < ActiveSupport::TestCase
  setup do
    ENV["EASYBROKER_API_URL"] = "https://api.easybroker.com/v1"
    ENV["EASYBROKER_API_KEY"] = "apitoken"
  end

  test "should get all properties" do
    VCR.use_cassette("easy_broker_api/properties/all") do
      properties = EasyBrokerApi::Properties.all
      assert_not_empty properties
      assert_not_empty properties["pagination"]
      assert_not_empty properties["content"]
    end
  end

  test "should allow to paginate" do
    VCR.use_cassette("easy_broker_api/properties/paginate") do
      properties = EasyBrokerApi::Properties.all(page: 2, limit: 5)
      assert_not_empty properties
      assert_not_empty properties["pagination"]
      assert_not_empty properties["content"]
      assert_equal 2, properties["pagination"]["page"]
      assert_equal 5, properties["pagination"]["limit"]
      assert_equal 5, properties["content"].size
    end
  end
end
