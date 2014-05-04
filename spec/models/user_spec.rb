require 'spec_helper'

describe User do
  it "has the username set correctly" do
    user = User.new name:"bot"

    user.name.should == "bot"
  end

  it "cannot be created without password" do
    user = User.create name:"bot"

    expect(user.valid?).to be(false)
    expect(User.count).to eq(0)
  end

  it "has to_s set correctly" do
    user = User.new name:"bot"

    user.to_s.should == "bot"
  end

  it "creates user with proper attributes" do
    user = User.create name:"bot", password:"123", password_confirmation:"123"

    expect(user.valid?).to be(true)
    expect(User.count).to eq(1)
  end

end