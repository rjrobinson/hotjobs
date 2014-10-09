class Update < ActiveRecord::Base
  belongs_to :incident
  belongs_to :user

  validates :body, presence: true, length: {maximum: 100 }
end
