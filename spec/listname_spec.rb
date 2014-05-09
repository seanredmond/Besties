require "spec_helper"

describe NytBesties::ListName do
  before :each do
    data = JSON.parse(%q<{"list_name":"Hardcover Fiction","display_name":"Hardcover Fiction"}>)
    @client = double(NytBesties::Client)
    @listname = NytBesties::ListName.new(data, @client)
  end

  it "returns a name" do
    @listname.name.should eq "Hardcover Fiction"
  end

  it "returns a display name" do
    @listname.display_name.should eq "Hardcover Fiction"
  end
end



