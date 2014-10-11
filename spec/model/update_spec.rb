require 'rails_helper'

describe Update do
  describe 'validations' do
    it { should have_valid(:body).when('Test sample update') }
  end

  describe 'associations' do
    it { should belong_to(:incident) }
    it { should belong_to(:user)}
  end
end
