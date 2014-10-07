class IncidentType < ActiveRecord::Base
  belongs_to :incident

  validates :type, presence: true
end
