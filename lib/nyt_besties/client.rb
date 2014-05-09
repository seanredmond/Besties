module NytBesties
  # Handles all communication with the API server
  class Client
    # The API version we understand
    @@version = 'v2'
    # Root URL for all API calls
    @@api = "http://api.nytimes.com/svc/books/#{@@version}"

    # Create your NYT Besties client
    #
    # @param [String] api_key Your API key.
    # @return Client A new instance of Client
    def initialize(api_key)
      @api_key = api_key
      @conn = Faraday.new
    end

    # Get the names of all Best-Seller Lists
    # ({http://developer.nytimes.com/docs/read/best_sellers_api#h3-list-names
    # api documention})
    # @return [Array<NytBesties::ListName>] An array of ListName objects
    def lists
      get_endpoint('lists/names').map{|l| NytBesties::ListName.new(l, self)}
    end

    # Get one best-seller list
    # ({http://developer.nytimes.com/docs/read/best_sellers_api#h3-list api 
    # documentation})
    # @param name [String] The name of the desired list. Names can be 
    #    retrieved via {#lists}
    # @param date [Date] Date of the list to be retrieved. Defaults to today.
    # @param options [Hash] Options to be passed to the API.
    # @return [Array<NytBesties::BestSellers>] An array of BestSellers objects
    def list(name, date=Date.today, options={})
      get_endpoint("lists/#{date.to_s}/#{name}").
        map{|l| NytBesties::BestSellers.new(l, self)}
    end

    private
    # Retrieves data from the API
    def get_endpoint(path, params = {})
      params.merge!({'api-key' => @api_key})
      response = @conn.get "#{@@api}/#{path}.json", params
      JSON.parse(response.body)['results']
    end
  end
end
