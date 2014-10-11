require 'rails_helper'

describe Comment do
  describe 'validations' do
    it { should have_valid(:comment_body).when('Test sample comment') }
  end

  describe 'associations' do
    it { should belong_to(:incident) }
    it { should belong_to(:user)}
  end
end
