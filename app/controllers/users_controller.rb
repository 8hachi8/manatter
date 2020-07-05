class UsersController < ApplicationController

  def index
    # @user = User.where(user_id: current_user.id).includes(:user, :job, :hour)
  end
  
  def edit
    # @user = User.where(user_id: current_user.id).includes(:user, :job, :hour)
  end

  def update
    # @user = User.where(user_id: current_user.id).includes(:user, :job, :hour)
    if current_user.update(user_params)
      redirect_to users_path, notice: 'マイページを変更しました'
    else
      render :edit, alert: '入力箇所が足りません'
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


