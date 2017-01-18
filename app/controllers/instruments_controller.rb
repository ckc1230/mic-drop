class InstrumentsController < ApplicationController
	def index
		@instruments = Instrument.order('name ASC')		
	end

	def show
		@instruments = Instrument.order('name ASC')
		instrument = Instrument.friendly.find(params[:id])
		@shootouts = Shootout.where(instrument_id: instrument.id)
	end
end
