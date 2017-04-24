class Reservation < ApplicationRecord
	belongs_to :event, :user
end
