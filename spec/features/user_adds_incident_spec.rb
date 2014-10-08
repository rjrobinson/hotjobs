require 'rails_helper'

def sign_in_as(user)
  visit new_user_session_path
  fill_in 'Email', with: user.email
  fill_in 'Password', with: user.password
  click_button 'Sign in'
end

feature 'User can add an incident' do
  let!(:incident_type){FactoryGirl.create(:incident_type)}
  let(:user){FactoryGirl.create(:user)}


  scenario 'user add incident', focus: true do
    sign_in_as user
    visit new_incident_path

    select 'Fire', from: "Incident type"
    fill_in 'Description', with: 'This is a really MASSIVE FIRE'
    fill_in 'Address', with: '33 Harrison Ave Boston, MA'

    click_button 'Create Incident'
    expect(page).to have_content('Incident Added!')
    expect(page).to have_content('MASSIVE FIRE')
    save_and_open_page
  end
end
