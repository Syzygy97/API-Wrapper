module Api
  class AbilityController < ApplicationController
    def index
      ability = PokeApi::Client.ability
      render json: ability
    end
  end
end
