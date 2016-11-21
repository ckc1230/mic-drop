class InstrumentsController < ApplicationController
	def show
		@shootouts = Shootout.where(instrument_id: params[:id])
	end
end
