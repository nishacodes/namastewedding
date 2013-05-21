class PagesController < ApplicationController
  def home
  	@inviterequest = Inviterequest.new(params[:inviterequest])
  end

  def about
  end

  


end
