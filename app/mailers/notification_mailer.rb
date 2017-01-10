class NotificationMailer < ActionMailer::Base
  default from: "no-reply@nomsterapp.com"

  def comment_added
    mail(to: "ryomamexico228@gmail.com", subject: "A comment has beem added to your place")
  end
end
