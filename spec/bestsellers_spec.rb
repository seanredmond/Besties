require "spec_helper"

describe NytBesties::BestSellers do
  before :each do
    data = JSON.parse(BOOK_RESPONSE)
    @client = double(NytBesties::Client)
    @best = NytBesties::BestSellers.new(data, @client)

    # Monkey patch the object so we can manipulate the data
    def @best.data
      @data
    end
  end

  describe "#asterisk?" do
    it "has an asterisk property" do
      @best.asterisk?.should be_false
    end

    context "when it does have an asterisk" do
      before :each do 
        @best.data['asterisk'] = 1
      end

      it "should return true" do
        @best.asterisk?.should be_true
      end
    end
  end

  describe "#bestsellers_date" do
    it "should return a date" do
      @best.bestsellers_date.should be_an_instance_of(Date)
      @best.bestsellers_date.to_s.should eq '2014-04-26'
    end
  end

  describe "#book_details" do
    it "returns an Array" do 
      @best.book_details.should be_an_instance_of Array
    end

    it "returns an Array of BookDetails objects" do
      @best.book_details.first.
        should be_an_instance_of NytBesties::BookDetails
    end
  end

  describe "#dagger?" do 
    it "has a dagger property" do
      @best.dagger?.should be_false
    end

    context "when it does have a dagger" do
      before :each do 
        @best.data['dagger'] = 1
      end

      it "should return true" do
        @best.dagger?.should be_true
      end
    end
  end

  describe '#display_name' do
    it "should return the name of the list" do
      @best.display_name.should eq "Hardcover Fiction"
    end
  end

  describe '#isbns' do
    it "should return an array of ISBN objects" do
      @best.isbns.should be_an_instance_of Array
      @best.isbns.first.should be_an_instance_of NytBesties::ISBN
    end
  end

  describe '#list_image' do
    it "should return the image name" do
      @best.list_image.should eq "9781455521203.jpeg"
    end
  end

  describe "#list_name" do
    it "should return the name of the list" do
      @best.list_name.should eq "Hardcover Fiction"
    end
  end

  describe "#normal_list_ends_at" do
    it "should return an integer" do
      @best.normal_list_ends_at.should be_an_instance_of(Fixnum)
    end

    it "should return the number of items normally on the list" do
      @best.normal_list_ends_at.should eq 16
    end
  end

  describe "#published_date" do
    it "should return a Date" do
      @best.published_date.should be_an_instance_of Date
    end

    it "should return the published date" do
      @best.published_date.should eq Date.new(2014, 5, 11)
    end
  end

  describe "#rank" do
    it "should return an integer" do
      @best.rank.should be_an_instance_of Fixnum
    end

    it "should return the rank" do
      @best.rank.should eq 14
    end
  end

  describe "#rank_last_week" do
    it "should return an integer" do
      @best.rank_last_week.should be_an_instance_of Fixnum
    end

    it "should return the rank" do
      @best.rank_last_week.should eq 0
    end
  end

  describe "#updated" do
    it "should return the update frequency" do
      @best.updated.should eq "WEEKLY"
    end
  end

  describe "#weeks_on_list" do
    it "should return an integer" do
      @best.weeks_on_list.should be_an_instance_of Fixnum
    end 

    it "should return the number of weeks on the list" do
      @best.weeks_on_list.should eq 1
    end
  end
end



