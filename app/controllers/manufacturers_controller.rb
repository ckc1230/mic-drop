class ManufacturersController < ApplicationController
	def index
		@manufacturers = Manufacturer.order('name ASC')
	end

	def show
		@manufacturer = Manufacturer.friendly.find(params[:id])
		@manufacturers = Manufacturer.order('name ASC')
	end
end