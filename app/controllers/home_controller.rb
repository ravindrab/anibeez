class HomeController < ApplicationController
  before_filter :authenticate_user!, :only => :index
def index
 @user=current_user
 @search = User.search(params[:search])
 @users = @search.paginate :per_page => 20, :page => params[:page]

  end

end
