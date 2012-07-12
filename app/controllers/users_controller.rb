class UsersController < ApplicationController
def index
 @user=current_user

 @search = User.search(params[:search])
 @users = @search.all


 

  end
end
