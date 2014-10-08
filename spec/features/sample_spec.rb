require 'rails_helper'

  feature 'user can add comic book', %Q(

  As a user
  I want to be able to sign up
  So that I can become a member

  ) do

  scenario do
    user = FactoryGirl.create(:user)

    visit root_path
    click_on 'Sign up'
    save_and_open_page
    

    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    fill_in 'Password confirmation', with: user.password

    click_on 'Sign up'

    expect(page).to have_content('')




  end
end
