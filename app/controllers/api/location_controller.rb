module Api
  class LocationController < ApplicationController
    def index
      locations = PokeApi::Client.location
      render json: locations
    end

    def show
      location = PokeApi::Client.location(params[:name])
      render json: location
    end
  end
end