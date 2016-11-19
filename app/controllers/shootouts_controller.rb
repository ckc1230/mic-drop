class ShootoutsController < ApplicationController
	def index
		@shootouts = Shootout.all
	end

	def show
	end

	def new
	end

	def create
	end

end
