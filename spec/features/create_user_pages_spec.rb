require 'rails_helper'

describe "create USER and LOGIN" do
  it "adds a user and logs in" do
    visit '/'
    click_on 'Sign Up'
    fill_in 'First name', :with => 'Barry'
    fill_in 'Last name', :with => 'Allen'
    fill_in 'Email', :with => 'j@email.com'
    fill_in 'Password', :with => 'password'
    fill_in 'Password confirmation', :with => 'password'
    click_on 'Sign Up'
    fill_in 'Email', :with => 'j@email.com'
    fill_in 'Password', :with => 'password'
    click_on 'Login'
    expect(page).to have_content 'j@email.com'
  end
end
