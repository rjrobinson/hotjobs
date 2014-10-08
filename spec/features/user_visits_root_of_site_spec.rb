require 'rails_helper'

feature 'User visits site', %Q(

  As a User
  I want go to a site that allows responders to report ongong jobs
  So that we are informed as to what is going on in the area.

  ) do

    scenario 'user add incident into site ' do

      visit root_path
  end

end
