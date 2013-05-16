class InviterequestMailer < ActionMailer::Base
   default :from => "nishabatra27@gmail.com"
  
  def registration_confirmation(inviterequest)
    @inviterequest = inviterequest
    mail(:to => "#{inviterequest.name} <#{inviterequest.email}>", :subject => "Thank you")
  end
end
