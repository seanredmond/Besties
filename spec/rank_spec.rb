require "spec_helper"

describe NytBesties::Rank do
  before :each do
    data = JSON.parse(HISTORY_RESPONSE)['results']
      .first['ranks_history'].first
    @rank = NytBesties::Rank.new(data)

    # Monkey patch the object so we can manipulate the data
    def @rank.data
      @data
    end
  end

  describe "#asterisk?" do
    it "has an asterisk property" do
      @rank.asterisk?.should be_false
    end

    context "when it does have an asterisk" do
      before :each do 
        @rank.data['asterisk'] = 1
      end

      it "should return true" do
        @rank.asterisk?.should be_true
      end
    end
  end

  describe "#bestsellers_date" do
    it "should return a date" do
      @rank.bestsellers_date.should be_an_instance_of(Date)
      @rank.bestsellers_date.to_s.should eq '2014-04-26'
    end
  end

  describe "#dagger?" do 
    it "has a dagger property" do
      @rank.dagger?.should be_false
    end

    context "when it does have a dagger" do
      before :each do 
        @rank.data['dagger'] = 1
      end

      it "should return true" do
        @rank.dagger?.should be_true
      end
    end
  end

  describe '#display_name' do
    it "should return the name of the list" do
      @rank.display_name.should eq "Hardcover Fiction"
    end
  end

  describe "#primary_isbn" do
    it "returns an ISBN object" do
      @rank.primary_isbns.should be_an_instance_of NytBesties::ISBN
    end

    it "returns ISBNs" do
      @rank.primary_isbns.isbn10.should eq "0061713783"
      @rank.primary_isbns.isbn13.should eq "9780061713781"
    end
  end

  describe "#list_name" do
    it "should return the name of the list" do
      @rank.list_name.should eq "Hardcover Fiction"
    end
  end

  describe "#published_date" do
    it "should return a Date" do
      @rank.published_date.should be_an_instance_of Date
    end

    it "should return the published date" do
      @rank.published_date.should eq Date.new(2014, 5, 11)
    end
  end

  describe "#rank" do
    it "should return an integer" do
      @rank.rank.should be_an_instance_of Fixnum
    end

    it "should return the rank" do
      @rank.rank.should eq 14
    end
  end

  describe "#weeks_on_list" do
    it "should return an integer" do
      @rank.weeks_on_list.should be_an_instance_of Fixnum
    end 

    it "should return the number of weeks on the list" do
      @rank.weeks_on_list.should eq 1
    end
  end

end
