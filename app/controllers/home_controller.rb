class HomeController < ApplicationController
  before_filter :authenticate_user!, :only => :index
def index
 @user=current_user
  end

end
