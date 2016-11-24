class ManufacturersController < ApplicationController
	def show
		@manufacturer = Manufacturer.find(params[:id])
		@manufacturers = Manufacturer.order('name ASC')
	end
end
