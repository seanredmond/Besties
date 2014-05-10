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
      @isbns = nil
      @details = nil
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

    def book_details
      if @details.nil?
        @details = @data['book_details'].map{|d| BookDetails.new(d)}
      end

      @details
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

    def isbns
      if @isbns.nil?
        @isbns = @data['isbns'].map{|i| NytBesties::ISBN.new(i)}
      end

      @isbns
    end

    def list_image
      @data['list_image']
    end

    # The name of the Times best-seller list.
    # @returns [String]
    def list_name
      @data['list_name']
    end

    def normal_list_ends_at
      @data['normal_list_ends_at']
    end

    # The date the best-seller list was published on NYTimes.com
    # @returns [Date]
    def published_date
      Date.strptime(@data['published_date'], '%Y-%m-%d')
    end

    # For each best seller on a list, various rank data is provided, including 
    # weeks_on_list and rank_last_week. Rank data is as of bestsellers_date.
    # @returns [Fixnum]
    def rank
      @data['rank']
    end

    # The rank of the best seller on list-name one week prior to 
    # bestsellers-date
    # @returns [Fixnum]
    def rank_last_week
      @data['rank_last_week']
    end

    def updated
      @data['updated']
    end

    # The number of weeks that the best seller has been on list-name,
    # as of bestsellers-date
    # @returns [Fixnum]
    def weeks_on_list
      @data['weeks_on_list']
    end
  end
end
