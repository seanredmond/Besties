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
end



