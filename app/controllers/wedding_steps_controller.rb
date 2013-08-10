class WeddingStepsController < ApplicationController
	include Wicked::Wizard
	steps :weddingdetails, :eventdetails

	def show
		@wedding = :wedding_id
		render_wizard
	end

	
end
