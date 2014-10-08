class IncidentType < ActiveRecord::Base
  belongs_to :incident

  validates :name, presence: true, length: {maximum: 40, minimum: 3}
end
