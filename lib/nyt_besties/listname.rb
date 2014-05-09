module NytBesties
  # Name data for one best-seller list.
  class ListName
    attr_reader :name, :display_name

    # Create a new ListName
    # @param data [Hash] Hash (parsed JSON) containing name data
    # @param client [NytBesties::Client] A client. Most likely the client that 
    #        retrieved the data for the list name.
    def initialize(data, client)
      @client = client
      @name = data['list_name']
      @display_name = data['display_name']
    end

    # Return a version of the name for use in API calls
    # 
    # As the documentation states, "Be sure to replace spaces with hyphens 
    # (e.g., e-book-fiction or hardcover-fiction, not E-Book Fiction or 
    # Hardcover Fiction)."
    # 
    # @return [String] The api-call-ready name.
    def api_name
      @name.gsub(/\s/, '-')
    end
  end
end
