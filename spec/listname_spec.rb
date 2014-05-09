require "spec_helper"

describe NytBesties::ListName do
  before :each do
    data = JSON.parse(%q<{"list_name":"Advice How-To and Miscellaneous","display_name":"Advice, How-To & Miscellaneous"}>)
    @client = double(NytBesties::Client)
    @listname = NytBesties::ListName.new(data, @client)
  end

  it "returns a name" do
    @listname.name.should eq "Advice How-To and Miscellaneous"
  end

  it "returns a display name" do
    @listname.display_name.should eq "Advice, How-To & Miscellaneous"
  end

  it "returns a name for us in API calls" do
    @listname.api_name.should eq "Advice-How-To-and-Miscellaneous"
  end
end



