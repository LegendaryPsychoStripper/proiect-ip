class ReservationsController < ApplicationController


def create
		is_going = 1;
		event_id = Event.event_id
		user_id = current_user.id

		reservation = Reservation.create({
			is_going: is_going, 
			event_id: event_id,
			user_id: user_id
			})
end

def destroy
@reservation.destroy
end

end
