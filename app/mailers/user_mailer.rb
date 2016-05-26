 class UserMailer < ActionMailer::Base
 	default from: "erform@gmail.com"


  def new_notification
    mail to: "silviakcamara@gmail.com", subject: "ERF Notification"
  end
end
