class Incident < ActiveRecord::Base
  has_many :incident_type


  attr_accessiable :address, :latitude, :longitude
  geocoded_by :address
  after_validation :geocode 

end
