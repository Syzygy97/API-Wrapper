module Api
  class BerryController < ApplicationController
    def index
      berries = PokeApi::Client.berry
      render json: berries
    end

    def show
      berry = PokeApi::Client.berry(params[:name])
      render json: berry
    end
  end
end