class InstrumentsController < ApplicationController
	def show
		@instruments = Instrument.order('name ASC')
		@shootouts = Shootout.where(instrument_id: params[:id])
	end
end
