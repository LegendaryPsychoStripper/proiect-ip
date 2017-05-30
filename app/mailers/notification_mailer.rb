class NotificationMailer < ActionMailer::Base
	default from: "fmi.notification@gmail.com" #"api.fmi@gmail.com"
	# datetime now - datetime :start = 24 ore, 6 ore; daca are reservation
	layout 'mailer'
	def notification_on_create(event)
    @event = event
    #@url  = 'http://example.com/login'
    @user = Testuser.find(@event.user_id)

    mail(to: @user.email, subject: "Evenimente FMI: #{@event.title}")
  	end
end
