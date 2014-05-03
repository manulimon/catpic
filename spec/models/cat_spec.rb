require 'spec_helper'

describe Cat do
  it "has the name set correctly" do
    cat = Cat.new name:"Joni"

    cat.name.should == "Joni"
  end

  it "cannot be created without user" do
    cat = Cat.create name:"Joni"

    expect(cat).not_to be_valid
    expect(Cat.count).to eq(0)
  end

  it "is not saved without user" do
    user = User.new name:"Joni"

    cat = Cat.create user:user

    expect(cat).not_to be_valid
    expect(Cat.count).to eq(0)
  end
end