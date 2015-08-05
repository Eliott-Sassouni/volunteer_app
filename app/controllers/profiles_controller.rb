class ProfilesController < ApplicationController
	def create
		@profile = Profile.create(profile_params)
		current_user.profile = @profile
		@profile.save
	end

	private
	def profile_params
		params.require(:profile).permit(:full_name, :age, :photo)
	end
end
