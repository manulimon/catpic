require 'spec_helper'

describe 'Cats page' do
  let!(:user) { FactoryGirl.create :user }

  it 'should show cats page' do
    visit cats_path
    expect(page).to have_content 'Listing cats'
  end

  it 'displays cats correctly' do
    FactoryGirl.create :cat, user:user, name:"muu"
    FactoryGirl.create :cat, user:user, name:"mou"

    visit cats_path
    expect(page).to have_content 'mou'
    expect(page).to have_content 'muu'


  end

  it 'shows cats on user page' do
    FactoryGirl.create :cat, user:user, name:"muu"
    FactoryGirl.create :cat, user:user, name:"mou"

    visit user_path(user)
    expect(page).to have_content 'mou'
    expect(page).to have_content 'muu'
  end

end