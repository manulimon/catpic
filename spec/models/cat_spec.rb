require 'spec_helper'

describe Cat do
  it "has the name set correctly" do
    cat = Cat.new name:"Joni"

    cat.name.should == "Joni"
  end

  it "cannot be created name" do
    cat = Cat.create

    expect(cat).not_to be_valid
    expect(Cat.count).to eq(0)
  end

  it "is not saved without user" do
    user = User.new name:"Joni"

    cat = Cat.create user:user

    expect(cat).not_to be_valid
    expect(Cat.count).to eq(0)
  end

  it "has to_s set correctly" do
    cat = Cat.new name:"bot"

    cat.to_s.should == "bot"
  end

  it "is created with user and a name" do
    user = FactoryGirl.create(:user)

    cat = Cat.create name:"mau", user:user

    expect(cat.valid?).to be(true)
    expect(Cat.count).to eq(1)
  end


end