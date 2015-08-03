class EventsController < ApplicationController
	def index
		@events = Event.all.order(created_at: :desc)
		@user = current_user
	end

	def new
		@event = Event.new
	end

	def create
		@event = current_user.events.build(event_params)

		if @event.save
			redirect_to events_path
		else
			redirect_to new_event_path
		end
	end

	def edit
		@event = Event.find(params[:id])

		verify_organization
	end

	def update
		@event = Event.find(params[:id])

		verify_organization

		if @event.update(event_params)
			redirect_to event_path(@event)
		else
			render :edit
		end
	end

	def show
    	@event = Event.find(params[:id])
	end

	def destroy
		@event = Event.find(params[:id])

		verify_organization

		@event.destroy
		redirect_to events_path
	end

private
	def verify_organization
		if @event.user != current_user
			redirect_to events_path
		end
	end

	def event_params
		params.require(:event).permit(:name, :description, :photo)
	end
end
