class Place < ApplicationRecord
    belongs_to :user
    geocoded_by :address                #can also be an IP address
    after_validation :geocode           #auto-fetch coordinates
    # reverse_geocoded_by :latitude       #reverse geocoding
    # after_validation :reverse_geocode   #auto-fetch address
    
    validates :name, :address, :description, presence: true
    validates :name, length: {minimum: 3} 
end

