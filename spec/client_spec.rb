require "spec_helper"

describe NytBesties::Client do

  before :each do
    @client = NytBesties::Client.new('12345')
  end

  describe "#lists" do
    before :each do
      @r = double(Faraday::Response, :body => LISTS, :headers => {})
      Faraday::Connection.any_instance.stub(:get).
        and_return(@r)
    end

    it 'Retrieves list names' do
      l = @client.lists
      l.should be_an_instance_of(Array)
      l.first.should be_an_instance_of(NytBesties::ListName)
    end
  end

  describe "#list" do
    before :all do
      @base = 'http://api.nytimes.com/svc/books/v2/lists'
    end

    before :each do
      @r = double(Faraday::Response, :body => LIST_RESPONSE, :headers => {})
      Faraday::Connection.any_instance.stub(:get).
        and_return(@r)

      # Monkey-patch Client object so we can mock the connection
      def @client.conn=(c)
       @conn = c
      end

      def @client.conn
        @conn
      end


    end

    it "should return an Array of BestSellers objects" do
      l = @client.list('listname')
      l.should be_an_instance_of(Array)
      l.first.should be_an_instance_of(NytBesties::BestSellers)
    end

    describe "date parameters" do
      before :each do
        @client.conn = double(Faraday)
      end

      it "should use today's date when none is provided" do
        today = Date.today.to_s
        list = 'listname'
        url = "#{@base}/#{today}/#{list}.json"

        @client.conn.should_receive(:get)
          .with(url, kind_of(Hash)).and_return(@r)
        @client.list('listname')
      end

      it "should use provided date" do
        list_date = Date.new(2014, 1, 1)
        list = 'listname'
        url = "#{@base}/#{list_date.to_s}/#{list}.json"
        @client.conn.should_receive(:get)
          .with(url, kind_of(Hash)).and_return(@r)
        @client.list('listname', Date.new(2014, 1, 1))
      end
    end
  end
end
