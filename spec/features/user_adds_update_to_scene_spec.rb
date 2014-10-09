require 'rails_helper'

feature 'User can update an incident' do
  let!(:incident_type){FactoryGirl.create(:incident_type)}
  let(:user){FactoryGirl.create(:user)}
  let(:incident){factoryGirl.create(:incident)}

  scenario 'user adds update to incident', focus: true do
    sign_in_as user
    visit new_incident_path

    select 'Fire', from: "Incident type"
    fill_in 'Description', with: 'This is a really MASSIVE FIRE'
    fill_in 'Address', with: '33 Harrison Ave Boston, MA'

    click_button 'Create Incident'
    
    fill_in 'Body', with: 'Sample update information.'

    click_button 'Update'

    expect(page).to have_content('Update reported.')
    save_and_open_page
  end
end
