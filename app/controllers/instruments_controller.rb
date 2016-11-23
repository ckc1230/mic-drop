class InstrumentsController < ApplicationController
	def show
		@instruments = Instrument.all
		@shootouts = Shootout.where(instrument_id: params[:id])
	end
end
