class UsersController < ApplicationController

  def index
    
  end
  
  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to users_path
    else
      render :edit
    end
  end

  def show
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:name, :store, :email, :image, :profile)
  end
end


