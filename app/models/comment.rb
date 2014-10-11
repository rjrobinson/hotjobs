class Comment < ActiveRecord::Base

  belongs_to :incident
  belongs_to :user

  validates :comment_body,  presence: true
  validates :incident_id,   presence: true
  validates :user_id,       presence: true
  
end
