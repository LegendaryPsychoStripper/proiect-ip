# Preview all emails at http://localhost:3000/rails/mailers/notification_mailer
class NotificationMailerPreview < ActionMailer::Preview
  def notification_on_create_preview
    NotificationMailer.notification_on_create(Testuser.first)
  end

  def notification_on_reservation_preview
    NotificationMailer.notification_on_reservation(Testuser.first)
  end
end
