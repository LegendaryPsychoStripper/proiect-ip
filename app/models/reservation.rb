class Reservation < ApplicationRecord
	belongs_to :event
	belongs_to :testuser, optional: true #:user
end
