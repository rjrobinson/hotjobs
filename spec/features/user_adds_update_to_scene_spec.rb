require 'rails_helper'

feature 'User can update an incident' do
  let!(:incident_type){FactoryGirl.create(:incident_type)}
  let(:user){FactoryGirl.create(:user)}

  scenario 'user adds update to incident', focus: true do
    sign_in_as user
    visit new_incident_path

    select 'Fire', from: "Incident type"
    fill_in 'Description', with: 'This is a really MASSIVE FIRE'
    fill_in 'Address', with: '33 Harrison Ave Boston, MA'

    click_button 'Create Incident'

    fill_in 'Update:', with: 'Sample update information.'

    click_button 'Send'

    expect(page).to have_content('Update reported.')
  end
end
