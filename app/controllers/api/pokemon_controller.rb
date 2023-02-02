module Api
  class PokemonController < ApplicationController
    def index
      pokemons = PokeApi::Client.pokemon
      render json: pokemons
    end

    def show
      pokemon = PokeApi::Client.pokemon(params[:name])
      render json: pokemon
    end
  end
end
  