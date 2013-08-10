class WeddingStepsController < ApplicationController
	include Wicked::Wizard
	steps :weddingdetails, :eventdetails

	def show
		@wedding = Wedding.find(params[:wedding_id])
		render_wizard
	end

	def update
		@wedding = Wedding.find(params[:wedding_id])
		@wedding.attributes = params[:wedding]
		render_wizard(@wedding)
	end
	
end
