class ShootoutsController < ApplicationController
	def index
		@shootouts = Shootout.all.order('created_at DESC').page(params[:page]).per_page(3)
		@manufacturers = Manufacturer.order('name ASC')
		@instruments = Instrument.order('name ASC')
	end

	def show
	end

	def new
		@shootout = Shootout.new
		@instruments = Instrument.all
		@microphones = Microphone.order('model ASC')
	end

	def create
		newShootout = Shootout.create(shootout_params)
		if newShootout.save
			redirect_to root_path
		else
	      flash[:error] = newShootout.errors.full_messages.join(". ")
	      redirect_to new_shootout_path
	  end
	end

	private

	def shootout_params
		params.require(:shootout).permit(:user_id, :instrument_id, shootout_microphones_attributes: [:microphone_id, :audio])
	end
end
