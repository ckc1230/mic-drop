class ManufacturersController < ApplicationController
	def show
		@manufacturer = Manufacturer.friendly.find(params[:id])
		@manufacturers = Manufacturer.order('name ASC')
	end
end
