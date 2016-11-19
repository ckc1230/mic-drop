class MicrophonesController < ApplicationController

	def index
	end
	def show
		@microphone = Microphone.find(params[:id])
	end
	def new
	end
	def create
	end

end
