require 'rails_helper'

feature 'User can comment on an incident', %Q(

  As a user
  I want to enter inccorect information
  So that I can revieve an error.

)do
  let!(:incident_type){FactoryGirl.create(:incident_type)}
  let(:user){FactoryGirl.create(:user)}

  scenario 'user adds comment to incident' do
    sign_in_as user
    visit new_incident_path

    select 'Fire', from: "Incident type"
    fill_in 'Description', with: 'Generic Fire Data'
    fill_in 'Address', with: '33 Harrison Ave Boston, MA'

    click_button 'Create Incident'

    click_on 'Comment'

    expect(page).to have_content 'Not added. There was an error.'
  end
end
