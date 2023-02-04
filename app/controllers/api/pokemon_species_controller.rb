module Api
  class PokemonSpeciesController < ApplicationController
    def index
      pokemon_species = PokeApi::Client.pokemon_species
      render json: pokemon_species
    end

    def show
      pokemon_species = PokeApi::Client.pokemon_species(params[:name])
      render json: pokemon_species
    end
  end
end
