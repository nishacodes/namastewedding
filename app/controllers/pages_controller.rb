class PagesController < ApplicationController
  def home

  @inviterequest = Inviterequest.new(params[:inviterequest])
   if current_user
    
   else
     render :action => 'home', :controller => 'pages'
   end
  end

  def about
  end

  


end
