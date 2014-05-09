module NytBesties
  # A Best-sellers list
  class BestSellers
    # Create a new best-sellers list
    # @param data [Hash] Hash (parsed JSON) containing name data
    # @param client [NytBesties::Client] A client. Most likely the client that 
    #        retrieved the data for the list name.
    def initialize(data, client)
      @data = data
      @client = client
    end

    # An asterisk indicates that a book's sales are barely distinguishable
    # from those of the book above it on the list.
    # @return [Boolean]
    def asterisk?
      @data['asterisk'] == 1
    end

    # The week-ending date for the sales reflected on list-name.
    # @return [Date]
    def bestsellers_date
      Date.strptime(@data['bestsellers_date'], '%Y-%m-%d')
    end

    # A dagger indicates that some bookstores have received bulk orders for 
    # this book.
    # @return [Boolean]
    def dagger?
      @data['dagger'] == 1
    end

    # The display_name field shows the text label that is used on NYTimes.com. 
    # @return [String]
    def display_name
      @data['display_name']
    end
  end
end
