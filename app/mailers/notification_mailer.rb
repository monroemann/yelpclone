class NotificationMailer < ActionMailer::Base
  default from: "noreply@monroemann.com"

  def comment_added
    mail(to: "roe@monroemann.com", subject: "A comment has been added to your place.")
  end

end
