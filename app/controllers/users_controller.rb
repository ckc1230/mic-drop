class UsersController < ApplicationController
	def show
		@user = User.friendly.find(params[:id])
		@instruments = @user.shootouts.each.map(&:instrument).uniq.sort_by &:name
		shootout_mics = @user.shootouts.each.map(&:shootout_microphones).flatten
		@microphones = shootout_mics.each.map(&:microphone).uniq.sort_by &:manufacturer
		@fav_shootouts = @user.fav_shootouts.each.map(&:shootout)
	end
end
