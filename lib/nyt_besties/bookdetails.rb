module NytBesties
  # Details about a best selling bok
  class BookDetails
    def initialize(data)
      @data = data
      @isbn = nil
    end

    # The target age group for the best seller. In most cases, age-group 
    # will be null/blank.
    # @returns [String]
    def age_group
      return @data['age_group']
    end

    # The author field lists only the author's name, without information 
    # about additional contributors such as illustrators. 
    # @returns [String]
    def author
      return @data['author']
    end

    # @returns [String]
    def book_image
      return @data['book_image']
    end

    # The author of the best seller, as well as other contributors such as 
    # the illustrator
    # @returns [String]
    def contributor
      return @data['contributor']
    end

    # The contributor_note field lists all contributors other than the author
    # (such as illustrators).
    # @returns [String]
    def contributor_note
      return @data['contributor_note']
    end

    # @returns [String]
    def description
      return @data['description']
    end

    # The publisher's list price of the best seller, including decimal point
    # @returns [Float]
    def price
      @data['price'].to_f
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

    # The standardized name of the publisher
    # @returns [String]
    def publisher
      return @data['publisher']
    end

    # The title of the best seller
    # @returns [String]
    def title
      return @data['title']
    end

  end
end
