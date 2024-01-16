class UsersController < ApplicationController
    def new
      @user = User.new
    end
  
    def create
      @user = User.new(user_params)
  
      if @user.save
        # Handle a successful save.
        # You can redirect to any path you want. For example, to the user's show page:
        redirect_to @user
      else
        # Handle an unsuccessful save.
        render 'new'
      end
    end
  
    private
  
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
  end