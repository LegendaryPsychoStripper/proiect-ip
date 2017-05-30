class NotificationMailer < ActionMailer::Base
	default from: "fmi.notification@gmail.com" #"api.fmi@gmail.com"
	# datetime now - datetime :start = 24 ore, 6 ore; daca are reservation
	layout 'mailer'
	def notification_on_create(event)
    @event = event
    @url  = "http://localhost:3000/events/#{@event.id}"
    @user = Testuser.find(@event.user_id)

    mail(to: @user.email, subject: "Evenimente FMI: #{@event.title}")
  	end

  	def notification_before(event)
  	end

  	def notification_on_reservation(reservation)
  		@reservation = reservation
  		@user = Testuser.find(@reservation.user_id)
  		@event = Event.find(@reservation.event_id)
  		@url  = "http://localhost:3000/events/#{@event.id}"
  		mail(to: @user.email, subject: "Rezervare Evenimente FMI: #{@event.title}")
  	end
end
