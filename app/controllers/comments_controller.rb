class CommentsController < ApplicationController
	before_action :authenticate_user!, only: [:create, :destroy]
	def create
		@event = Event.find(params[:event_id])
		@comment = @event.comments.build(comment_params)
		@comment.commenter = current_user.profile.full_name
		@comment.user_id = current_user.id
		@comment.save
		redirect_to event_path(@event)
	end
	def destroy
    	@event = Event.find(params[:event_id])
    	@comment = @event.comments.find(params[:id])
    	@comment.destroy
    	redirect_to event_path(@event)
end


private
    def comment_params
      params.require(:comment).permit(:comment)
    end
end