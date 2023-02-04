module Api
  class ItemController < ApplicationController
    def index
      items = PokeApi::Client.item
      render json: items
    end

    def show
      item = PokeApi::Client.item(params[:name])
      render json: item
    end
  end
end