require 'spec_helper'

describe Post do
  it "it cannot be created without title" do
    post = Post.create

    expect(post.valid?).to be(false)
    expect(Post.count).to eq(0)
  end
end