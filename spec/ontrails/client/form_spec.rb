require 'spec_helper'

describe Ontrails::Client do
  describe "default attributes" do
  
  end

  it 'fetch form' do 
    @contact =  stub_request(:post, "https://api.ontraport.com/fdata.php").with(:body => "appid=x&key=x&reqType=fetch&data=<contact_id>3</contact_id>").to_return(:status => 200, :body => "", :headers => {})
  end
end
