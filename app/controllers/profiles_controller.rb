class ProfilesController < ApplicationController
	before_action :verify_profile, :only => [:edit, :update, :destroy]
	def index
		@profiles = Profile.all.sort_by {|x| [x.full_name.upcase]}
	end

	def create
		@profile = Profile.create(profile_params)
		current_user.profile = @profile
		@profile.save
	end

	def show
    	@profile = Profile.find(params[:id])
    	@events = @profile.user.events
	end

	def edit
		@profile = Profile.find(params[:id])
	end

	def update
		@profile = Profile.find(params[:id])

		if @profile.update(profile_params)
			redirect_to profile_path(@profile)
		else
			render :edit
		end
	end

	private
	def verify_profile
		if Profile.find(params[:id]).user != current_user
			redirect_to profiles_path
		end
	end

	def profile_params
		params.require(:profile).permit(:full_name, :age, :photo, :description)
	end
end
