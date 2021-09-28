class Booking < ApplicationRecord
    belongs_to :customer
	belongs_to :schedule
	SEAT_TYPE_LIST = ["Lower Class", "Middle Class", "Higher Class"]
end
