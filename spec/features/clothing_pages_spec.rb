require 'rails_helper'

describe "Add Clothing" do
  it "Create and View Clothing" do
    user = FactoryGirl.create(:user)
    visit '/'
    fill_in 'Email', :with => 'j@email.com'
    fill_in 'Password', :with => 'password'
    click_on 'Login'
    click_on 'Clothing'
    click_on 'Add New Product'
    fill_in 'Name', :with => 'glasses'
    fill_in 'Details', :with => 'details'
    fill_in 'Price', :with => '100'
    page.attach_file("Image", 'spec/images/jeans.jpg')
    click_on 'Save'
    click_on 'glasses'
    expect(page).to have_content 'glasses'
  end
end


describe "Edit and Delete Clothing" do
  it "Edit Clothing" do
    user = FactoryGirl.create(:user)
    user = FactoryGirl.create(:clothing)
    visit '/'
    fill_in 'Email', :with => 'j@email.com'
    fill_in 'Password', :with => 'password'
    click_on 'Login'
    click_on 'Clothing'
    click_on 'jeans'
    click_on 'Edit Clothing'
    fill_in 'Name', :with => 'glasses'
    fill_in 'Details', :with => 'sweet'
    page.attach_file("Image", 'spec/images/jeans.jpg')
    click_on 'Save'
    expect(page).to have_content 'glasses'
  end
  it "Delete Photo" do
    user = FactoryGirl.create(:user)
    user = FactoryGirl.create(:clothing)
    visit '/'
    fill_in 'Email', :with => 'j@email.com'
    fill_in 'Password', :with => 'password'
    click_on 'Login'
    click_on 'Clothing'
    click_on 'jeans'
    click_on 'Delete Clothing'
    expect(page).to_not have_content 'jeans'
  end
end
