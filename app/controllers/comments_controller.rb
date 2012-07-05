class CommentsController < ApplicationController

def create
    @activity = Activity.find(params[:activity_id])
    
    @comment = @activity.comments.new(params[:comment])
    @comment.user_id=current_user.id
    @comment.save
    redirect_to activity_path(@activity)
    end

def destroy
    @activity = Activity.find(params[:activity_id])
    @comment = @activity.comments.find(params[:id])
    @comment.destroy
    redirect_to activity_path(@activity)
  end

end
