class UserMailer < ActionMailer::Base
  def registration_confirmation(user)
    mail(:to => user.email, :subject => "Your Application has been Received", :from => "usmantest@devsinc.com", :body=>"#{user.name},

Thank you for your interest in Devsinc. This email is to confirm you that we have received your application.
Our recruitment team member will contact you if we feel that you are suitable candidate. Thank you")
  end
end
