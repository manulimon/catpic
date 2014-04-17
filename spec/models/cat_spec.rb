require 'spec_helper'

describe Cat do
  it "has the name set correctly" do
    cat = Cat.new name:"Joni"

    cat.name.should == "Joni"
  end

  it "cannot be created without user" do
    cat = Cat.new name:"Joni"

    expect(cat.valid?).to be(false)
    expect(Cat.count).to eq(0)
  end
end