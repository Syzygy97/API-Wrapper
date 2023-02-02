module PokeApi
  class Client
    def self.ability(type="")
      response = Request.call("get", "/ability/", type.empty? ? "" : type)
    end

    def self.pokemon(type="")
      response = Request.call("get", "/pokemon/", type.empty? ? "" : type)
    end
  end
end