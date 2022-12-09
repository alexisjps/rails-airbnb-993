class Booking < ApplicationRecord
    belongs_to :user
    belongs_to :flat
    has_one_attached :picture
end
