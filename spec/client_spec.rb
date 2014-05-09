require "spec_helper"

describe NytBesties::Client do

  before :each do
    @client = NytBesties::Client.new('12345')
    @r = double(Faraday::Response, :body => LISTS,
      :headers => {})
  end

  describe "#lists" do
    before :each do
      Faraday::Connection.any_instance.stub(:get).
        and_return(@r)
    end

    it 'does something' do
      @client.lists.should be_an_instance_of(Array)
    end
  end
end
