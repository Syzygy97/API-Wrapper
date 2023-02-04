module Api
  class RegionController < ApplicationController
    def index
      regions = PokeApi::Client.region
      render json: regions
    end

    def show
      region = PokeApi::Client.region(params[:name])
      render json: region
    end
  end
end