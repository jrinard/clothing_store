require 'rails_helper'

describe "Add Comment" do
  it "add comment" do
    user = FactoryGirl.create(:user)
    user = FactoryGirl.create(:clothing)
    visit '/'
    fill_in 'Email', :with => 'j@email.com'
    fill_in 'Password', :with => 'password'
    click_on 'Login'
    click_on 'Clothing'
    click_on 'jeans'
    click_on 'Add Comment'
    fill_in 'Content', :with => 'Comfortable'
    click_on 'Save'
    expect(page).to have_content 'Comfortable'
  end
  it "Edit Comment" do
    user = FactoryGirl.create(:user)
    user = FactoryGirl.create(:clothing)
    visit '/'
    fill_in 'Email', :with => 'j@email.com'
    fill_in 'Password', :with => 'password'
    click_on 'Login'
    click_on 'Clothing'
    click_on 'jeans'
    click_on 'Add Comment'
    fill_in 'Content', :with => 'Comfortable'
    click_on 'Save'
    click_on 'Edit'
    fill_in 'Content', :with => 'Roomy'
    click_on 'Save'
    expect(page).to have_content 'Roomy'
  end
  it "Delete Comment" do
    user = FactoryGirl.create(:user)
    user = FactoryGirl.create(:clothing)
    visit '/'
    fill_in 'Email', :with => 'j@email.com'
    fill_in 'Password', :with => 'password'
    click_on 'Login'
    click_on 'Clothing'
    click_on 'jeans'
    click_on 'Add Comment'
    fill_in 'Content', :with => 'Comfortable'
    click_on 'Save'
    click_on 'Delete'
    expect(page).to_not have_content 'Roomy'
  end
end
