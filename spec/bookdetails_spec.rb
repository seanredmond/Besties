require "spec_helper"

describe NytBesties::BookDetails do
  before :each do
    data = JSON.parse(BOOK_RESPONSE)
    @client = double(NytBesties::Client)
    @deets = NytBesties::BookDetails.new(data['book_details'].first)
  end

  describe "#age_group" do
    it "returns an age group" do 
      @deets.age_group.should eq ""
    end
  end

  describe "#author" do
    it "returns an author" do 
      @deets.author.should eq "Francine Prose"
    end
  end

  describe "#book_image" do
    it "returns a book image" do 
      @deets.book_image.should eq nil
    end
  end

  describe "#contributor" do
    it "returns a contributor" do 
      @deets.contributor.should eq "by Francine Prose"
    end
  end

  describe "#contributor_note" do
    it "returns a contributor note" do 
      @deets.contributor_note.should eq ""
    end
  end

  describe "#description" do
    it "returns a description note" do 
      @deets.description.should eq "The lives of artists and libertines intersect at a venue for cross-dressing men and women.\u00a0"
    end
  end

  describe "#price" do
    it "returns a Float" do 
      @deets.price.should be_an_instance_of Float
    end

    it "returns a price" do
      @deets.price.should eq 0.00
    end
  end

  describe "#primary_isbn" do
    it "returns an ISBN object" do
      @deets.primary_isbns.should be_an_instance_of NytBesties::ISBN
    end

    it "returns ISBNs" do
      @deets.primary_isbns.isbn10.should eq "0061713783"
      @deets.primary_isbns.isbn13.should eq "9780061713781"
    end
  end

  describe "#publisher" do
    it "returns a publisher" do 
      @deets.publisher.should eq "Harper"
    end
  end

  describe "#title" do
    it "returns a title" do 
      @deets.title.should eq "LOVERS AT THE CHAMELEON CLUB , PARIS 1932"
    end
  end
end
