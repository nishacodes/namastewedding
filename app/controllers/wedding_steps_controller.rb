class WeddingStepsController < ApplicationController
	include Wicked::Wizard
	steps :eventdetails, :addphotos, :addvendors

	def show
		@wedding = Wedding.find(params[:wedding_id])
		@pin = current_user.pins.new # added pins/new action
		@pin = current_user.pins.create(params[:pin])  # added from pins/create action
		render_wizard
		
	end

	def update
		@wedding = Wedding.find(params[:wedding_id])
		@wedding.update_attributes(params[:wedding])
		render_wizard @wedding
		
	end
	
# private	

  #def redirect_to_finish_wizard(options = nil)
  #  redirect_to root_path , notice: "Thank you for signing up." #wedding path is not working
  #end

end
