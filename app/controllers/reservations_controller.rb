class ReservationsController < ApplicationController
before_action :authenticate_testuser!

	def new
    	@reservation = Reservation.new
 	end

 	def show
 	end

	def create
		@reservation = Reservation.new(reservation_params)
        @event = Event.find(@reservation.event_id)
        @event.seats -=1
        @event.update_attribute(:seats,@event.seats)
		if @reservation.save
			NotificationMailer.notification_on_reservation(@reservation).deliver_later
			redirect_to :back
		end

	end

	def destroy
		@reservation = Reservation.find(params[:id])
		@event = Event.find(@reservation.event_id)
        @event.seats +=1
        @event.update_attribute(:seats,@event.seats)
        if @reservation.destroy
        	redirect_to :back
		end
	end

def is_going?
end

def is_interested?
end
private
	def reservation_params
      params.require(:reservation).permit(:user_id,:event_id,:is_going)
    end

end
