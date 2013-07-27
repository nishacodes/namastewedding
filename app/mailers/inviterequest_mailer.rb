class InviterequestMailer < ActionMailer::Base
   default :from => "Namaste Wedding"
  
  def registration_confirmation(inviterequest)
    @inviterequest = inviterequest
    mail(:to => "#{inviterequest.name} <#{inviterequest.email}>", :subject => "Thank you")
  end
end
