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
		newMic = Shootout.create(shootout_params)
		if newMic.save
			redirect_to root_path
		else
	      flash[:error] = newMic.errors.full_messages.join(". ")
	      redirect_to new_shootout_path
	  end
	end

	private

	def shootout_params
		params.require(:shootout).permit(:user_id, :instrument_id, shootout_microphones_attributes: [:microphone_id, :audio])
	end
end
