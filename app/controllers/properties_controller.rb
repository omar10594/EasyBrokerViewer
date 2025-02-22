class PropertiesController < ApplicationController
  def index
    properties_data = EasyBrokerApi::Properties.all(page: params[:page])
    @properties = properties_data["content"]
    @pagination = properties_data["pagination"]
  end
end
