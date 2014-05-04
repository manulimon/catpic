require 'spec_helper'

describe Post do
  it "it cannot be created without title" do
    post = Post.create

    expect(post.valid?).to be(false)
    expect(Post.count).to eq(0)
  end

    it "it cannot be created without pic" do
      post = Post.new user_id:1, title:"kissa"

      expect(post.valid?).to be(false)
      expect(Post.count).to eq(0)
    end

  it "has to_s set correctly" do
    post = Post.new title:"bot"

    post.to_s.should == "bot"
  end

  it "is created with used and a pic" do
    user = FactoryGirl.create(:user)
    pic = FactoryGirl.create(:pic, user: user)

    post = Post.create title:"bot", user:user, pic_id:pic.id

    expect(post.valid?).to be(true)
    expect(Post.count).to eq(1)
  end

end