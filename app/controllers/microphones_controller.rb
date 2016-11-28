class MicrophonesController < ApplicationController

	def index
	end
	def show
		@microphone = Microphone.friendly.find(params[:id])
	end
	def new
	end
	def create
	end

end
