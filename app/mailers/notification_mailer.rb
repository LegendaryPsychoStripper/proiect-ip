class NotificationMailer < ActionMailer::Base
	default from: "api.fmi@gmail.com"
	
	def notification_email(user)
    #@user = user
    #@url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Evenimente FMI')
  	end
end
