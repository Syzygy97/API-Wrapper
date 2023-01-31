module PokeApi
  class Request

    # TOKEN = 'token'
    BASE_URL = 'https://pokeapi.co/api/v2'
    
    def self.call(http_method, endpoint)
      result = RestClient::Request.execute(
        method: http_method,
        url: "#{BASE_URL}#{endpoint}",
        headers: {"Content-Type" => "application/json"})
      {code: result.code, status: "Success", data: JSON.parse(result.body)}
    rescue RestClient::ExceptionWithResponse => error
      {code: error.http_code, status: error.message, data: Errors.map(error.http_code)}
    end
  end
end