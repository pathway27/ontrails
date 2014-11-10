require 'spec_helper'

describe Ontrails::Configuration do
  before do
    Ontrails.configure do |config|
      config.app_id  = 'xxx'
      config.app_key = 'xxx'
    end
  end

  it 'uses configuration block' do
    @client = Ontrails::Client.new
    expect(@client.app_id).to eq('xxx')
  end
end
