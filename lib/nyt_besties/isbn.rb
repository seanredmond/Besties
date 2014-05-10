module NytBesties
  # An ISBN number, with corresponding ISBN-10 and ISBN-13 members
  class ISBN
    attr_reader :isbn10, :isbn13
    def initialize(data)
      @isbn10 = data['isbn10']
      @isbn13 = data['isbn13']
    end
  end
end
    
