class ShootoutsController < ApplicationController
	def index
		@shootouts = Shootout.all
		@manufacturers = Manufacturer.all
		@instruments = Instrument.all
	end

	def show
	end

	def new
		@shootout = Shootout.new
		@instruments = Instrument.all
		@microphones = Microphone.all
	end

	def create
		Shootout.create(shootout_params)
		redirect_to root_path
	end

	private

	def shootout_params
		params.require(:shootout).permit(:instrument_id, shootout_microphones_attributes: [:microphone_id])
	end
end
