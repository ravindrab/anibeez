class UsersController < ApplicationController
def index
 @user=current_user
 
 @search = User.search(params[:search])
 @users = @search.all
  @san=User.all

 @activities = Activity.all(:order => 'updated_at DESC')



@activity = Activity.new
 

  end
end
