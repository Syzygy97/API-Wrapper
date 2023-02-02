module PokeApi
  class Request

    # TOKEN = 'token' # Not needed for PokeApi
    BASE_URL = 'https://pokeapi.co/api/v2'
    
    def self.call(http_method, endpoint, options)
      type = options.empty? ? "" : options
      result = RestClient::Request.execute(
        method: http_method,
        url: "#{BASE_URL}#{endpoint}#{type}",
        headers: {"Content-Type" => "application/json"})
      {code: result.code, status: "Success", data: JSON.parse(result.body)}
    rescue RestClient::ExceptionWithResponse => error
      {code: error.http_code, status: error.message, data: Errors.map(error.http_code)}
    end
  end
end