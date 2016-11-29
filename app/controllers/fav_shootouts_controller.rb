class FavShootoutsController < ApplicationController
	def create
		FavShootout.create(fav_shootout_params)
		redirect_to user_path(current_user)
	end

private
	def fav_shootout_params
		params.require(:fav_shootout).permit(:user_id, :shootout_id)
	end
end
