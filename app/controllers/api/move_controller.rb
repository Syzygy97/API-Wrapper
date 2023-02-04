module Api
  class MoveController < ApplicationController
    def index
      moves = PokeApi::Client.move
      render json: moves
    end

    def show
      move = PokeApi::Client.move(params[:name])
      render json: move
    end
  end
end