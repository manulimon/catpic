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

  describe "with proper password" do
    let(:user){ FactoryGirl.create(:user) }

    it "user is valid" do

      expect(user.valid?).to be(true)
      expect(User.count).to eq(1)
    end

  end


end