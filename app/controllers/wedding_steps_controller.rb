class WeddingStepsController < ApplicationController
	include Wicked::Wizard
	steps :weddingdetails, :addphotos

	def show
		@wedding = Wedding.find(params[:wedding_id])
		render_wizard
	end

	def update
		@wedding = Wedding.find(params[:wedding_id])
		@wedding.update_attributes(params[:wedding])
		render_wizard @wedding
	end
	
end
