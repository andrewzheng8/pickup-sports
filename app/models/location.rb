class Location < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :address, presence: true, uniqueness: true

  geocoded_by :address
  after_validation :geocode

end
