module PokeApi
  class Client
    def self.ability
      response = Request.call("get" , "/ability")
    end
  end
end