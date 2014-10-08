class IncidentType < ActiveRecord::Base
  has_many :incidents

  validates :name, presence: true, length: {maximum: 40, minimum: 3}
end
