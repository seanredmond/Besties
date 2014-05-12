module NytBesties
  # A ranking in a Best-sellers history
  class Rank
    # Create a new rank
    # @param data [Hash] Hash (parsed JSON) containing name data
    def initialize(data)
      @data = data
      @isbn = nil
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

    # International Standard Book Number, 10 or 13 digits. A best seller may 
    # have both 10-digit and 13-digit ISBNs, and may have multiple ISBNs of
    # each type. 
    # @returns [NytBesties::ISBN]
    def primary_isbns
      if @isbn.nil?
        @isbn = ISBN.new({
          'isbn10' => @data['primary_isbn10'],
          'isbn13' => @data['primary_isbn13']
        })
      end

      @isbn
    end

    # The name of the Times best-seller list.
    # @returns [String]
    def list_name
      @data['list_name']
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

    # The number of weeks that the best seller has been on list-name,
    # as of bestsellers-date
    # @returns [Fixnum]
    def weeks_on_list
      @data['weeks_on_list']
    end
  end
end



