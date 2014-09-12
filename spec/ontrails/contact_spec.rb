require 'spec_helper'

describe Ontrails::Contact do
  it "modules load properly" do
    expect("YAY!".class.name).to eq("String")
  end

  describe "default attributes" do
    it "must include httparty methods" do
      #expect(Ontrails::Contact.respond_to(:search)).to be_truthy
    end

    it "must have the ontraport api endpoint" do
      expect(Ontrails::Contact.url).to eq('https://api.ontraport.com/cdata.php')
    end
  end
end
