class HomeController < ApplicationController
layout 'home'
  before_filter :authenticate_user!, :only => :index
def index
 @user=current_user
 
 @search = User.search(params[:search])
 @users = @search.all
  @san=User.all

 @activities = Activity.all(:order => 'updated_at DESC')



@activity = Activity.new
  end

end
