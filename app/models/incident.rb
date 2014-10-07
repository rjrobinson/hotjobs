class Incident < ActiveRecord::Base
  has_many :incident_type
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
end
