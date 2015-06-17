class Location < ActiveRecord::Base
  belongs_to :user
  validates :location_name, presence: true
  validates :address, presence: true
  geocoded_by :address
  after_validation :geocode
end
