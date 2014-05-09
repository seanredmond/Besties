module NytBesties
  class Client
    @@version = 'v2'
    @@api = "http://api.nytimes.com/svc/books/#{@@version}"

    def initialize(api_key)
      @api_key = api_key
      @conn = get_connection
    end

    def lists
      get_endpoint('lists/names')
    end

    def get_endpoint(path, params = {})
      params.merge!({'api-key' => @api_key})
      puts "#{@@api}/#{path}.json"
      response = @conn.get "#{@@api}/#{path}.json", params
      JSON.parse(response.body)['results']
    end

    private
    def get_connection
      Faraday.new
    end
  end
end
