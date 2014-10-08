require 'rails_helper'

feature 'User add incident to site', %Q(

  As a User
  I want to be able to report an emergency to other responders
  So that we are informed as to what is going on in the area.

  ) do

    scenario 'user add incident into site ' do

      visit root_path

      click_on 'Sign in'

      
  end

end
