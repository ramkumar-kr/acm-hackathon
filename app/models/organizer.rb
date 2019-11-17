class Organizer < ApplicationRecord
    belongs_to :location
    has_many :events, as: :distributor
    has_many :events
end
