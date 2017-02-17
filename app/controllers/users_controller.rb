class UsersController < ApplicationController
  skip_before_filter :require_login  #this is the exception to the rule

  def login
    
  end

  def signup
  end

  def new
    render :signup
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome to the site!"
      redirect_to "/"
    else
      flash[:alert] = "There was a problem creating your account. Please try again."
      redirect_to :back
    end
  end

  private
    def user_params
      params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name)
    end
end
