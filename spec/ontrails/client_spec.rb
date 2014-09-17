require 'spec_helper'


describe Ontrails::Client do
  before do
    @api_id = 'foo'
    @api_key = 'bar'
    @client = Ontrails::Client.new @api_id, @api_key

  end

  it 'initializes with correct key and id' do
    expect(@client.app_id).to eq(@api_id)
    expect(@client.app_key).to eq(@api_key)
    expect(@client.auth).to eq({ 'Appid' => @api_id, 'Key' => @api_key })
  end

end
