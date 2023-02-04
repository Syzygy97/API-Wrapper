module PokeApi
  class Client
    def self.ability(name="")
      response = Request.call("get", "/ability/", name.empty? ? "" : name)
      if !name.empty?
        response_en = response[:data]["effect_entries"].find{|x| x["language"]["name"] == "en"}
      else
        response
      end
    end

    def self.pokemon(name="")
      response = Request.call("get", "/pokemon/", name.empty? ? "" : name)
    end

    def self.item(name="")
      response = Request.call("get", "/item/", name.empty? ? "" : name)
      if !name.empty?
        response_en = response[:data]["effect_entries"].find{|x| x["language"]["name"] == "en"}
      else
        response
      end
    end

    def self.location(name="")
      response = Request.call("get", "/location/", name.empty? ? "" : name)
    end

    def self.region(name="")
      response = Request.call("get", "/region/", name.empty? ? "" : name)
    end

    def self.move(name="")
      response = Request.call("get", "/move/", name.empty? ? "" : name)
    end

    def self.pokemon_species(name="")
      response = Request.call("get", "/pokemon-species/", name.empty? ? "" : name)
    end

    def self.berry(name="")
      response = Request.call("get", "/berry/", name.empty? ? "" : name)
    end

    def self.type(name="")
      response = Request.call("get", "/type/", name.empty? ? "" : name)
    end
  end
end