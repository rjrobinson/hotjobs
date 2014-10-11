require 'rails_helper'

describe User do
  describe 'validations' do
    it { should validate_uniqueness_of(:email) }
    it { should have_valid(:email).when('test@test.com', 'test+spam@gmail.com') }
    it { should_not have_valid(:email).when('fail', 123) }

  end

  describe 'associations' do
    it { should have_many(:incidents) }
  end
end
