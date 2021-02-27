class Event < ApplicationRecord

    validates :title, presense: true 
    validates :date, presence: true 
    validates :location, presence: true 
    
end
