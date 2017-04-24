class User < ApplicationRecord
	attr_accessible :uid, :first_name, :last_name
	#has_many :reservations
	#has_many :events
end
