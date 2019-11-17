class Event < ApplicationRecord
    belongs_to :location
    belongs_to :organizer, foreign_key: "organizer_id"
    belongs_to :organizer, foreign_key: "distributor_id", optional: true
    has_one :food
end
