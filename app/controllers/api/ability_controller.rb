module Api
  class AbilityController < ApplicationController
    def index
      abilities = PokeApi::Client.ability
      render json: abilities
    end

    def show
      ability = PokeApi::Client.ability(params[:name])
      render json: ability
    end

  end
end
