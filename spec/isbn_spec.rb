require "spec_helper"

describe NytBesties::ISBN do
  before :each do
    data = JSON.parse(%q<{"isbn10": "1455521205", "isbn13": "9781455521203"}>)
    @isbn = NytBesties::ISBN.new(data)
  end

  describe "#isbn10" do
    it "should return the 10-digit ISBN" do
      @isbn.isbn10.should eq "1455521205"
    end
  end

  describe "#isbn13" do
    it "should return the 13-digit ISBN" do
      @isbn.isbn13.should eq "9781455521203"
    end
  end
end
