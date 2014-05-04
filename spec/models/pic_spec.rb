require 'spec_helper'

describe Pic do
  it "has the url set correctly" do
    pic = Pic.new url:"http:"

    pic.url.should == "http:"
  end

  it "it cannot be created without user" do
    pic = Pic.new url:"http:"

    expect(pic.valid?).to be(false)
    expect(Pic.count).to eq(0)
  end

  it "has to_s set correctly" do
    pic = Pic.new header:"cute"

    pic.to_s.should == "cute"
  end
end
