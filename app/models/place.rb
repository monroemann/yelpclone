class Place < ActiveRecord::Base

belongs_to :user
geocoded_by :address
after_validation :geocode

validates :name, :address, :description, presence: true
validates :name, length: { minimum: 3, 
  too_short: "3 characters is the minimum allowed." }

end
