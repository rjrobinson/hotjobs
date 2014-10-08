class Incident < ActiveRecord::Base
  has_many :incident_types
  geocoded_by :address
  after_validation :geocode, if: :address_changed?


  validates :address, presence: true
  validates :name, presence: true
  validates :longitude, presence: true, length: { minniumn: 1, maximnum: 6   }
  validates :latitude, presence: true, length: { minniumn: 1, maximnum: 6   }

end
