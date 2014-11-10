require 'spec_helper'

describe Ontrails::Client do
  describe "default attributes" do
    it "must have the ontraport api endpoint" do
    end
  end

  it 'add contact' do
    @contact =  stub_request(:post, "https://api.ontraport.com/cdata.php").with(:body => "appid=x&key=x&reqType=fetch&data=<contact_id>24866</contact_id>").to_return(:status => 200, :body => "", :headers => {})
  end

  it 'get details' do
    @contact =  stub_request(:post, "https://api.ontraport.com/cdata.php").with(:body => "appid=x&key=x&reqType=fetch&data=<contact_id>24866</contact_id>").to_return(:status => 200, :body => "", :headers => {})
  end
end
