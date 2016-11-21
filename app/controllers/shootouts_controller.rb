class ShootoutsController < ApplicationController
	def index
		@shootouts = Shootout.all
		@manufacturers = Manufacturer.all
		@instruments = Instrument.all
	end

	def show
	end

	def new
	end

	def create
	end

end
