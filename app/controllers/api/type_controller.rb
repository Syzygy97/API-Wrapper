module Api
  class TypeController < ApplicationController
    def index
      types = PokeApi::Client.type
      render json: types
    end

    def show
      type = PokeApi::Client.type(params[:name])
      render json: type
    end
  end
end
