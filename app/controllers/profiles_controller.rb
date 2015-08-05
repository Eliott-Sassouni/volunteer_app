class ProfilesController < ApplicationController
	def index
		@profiles = Profile.all.order(full_name: :desc)
	end

	def create
		@profile = Profile.create(profile_params)
		current_user.profile = @profile
		@profile.save
	end

	def show
    	@profile = Profile.find(params[:id])
	end

	private
	def profile_params
		params.require(:profile).permit(:full_name, :age, :photo)
	end
end
