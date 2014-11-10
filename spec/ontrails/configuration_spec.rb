require 'spec_helper'

describe Ontrails::Configuration do
  before do
    Ontrails.configure do |configure|
      configure.app_id  = 'xxx'
      configure.app_key = 'xxx'
    end
  end

  if 'uses configuration block' do
    @client = Ontrails::Client.new 
    expect(@client.app_id).to eq('xxx')
  end
end
