require 'rails_helper'

describe Incident do
  describe 'validations' do
    it { should have_valid(:address).when('33 Harrison Ave Boston, MA') }
    it { should have_valid(:latitude).when('23.4565')}
    it { should have_valid(:longitude).when('23.4565')}
  end

  describe 'associations' do
    it { should belong_to(:user) }
    it { should have_many(:updates)}
  end
end
