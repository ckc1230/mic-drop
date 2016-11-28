class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		@instruments = @user.shootouts.each.map(&:instrument).uniq.sort_by &:name
		shootout_mics = @user.shootouts.each.map(&:shootout_microphones).flatten
		@microphones = shootout_mics.each.map(&:microphone).uniq.sort_by &:manufacturer
	end
end
