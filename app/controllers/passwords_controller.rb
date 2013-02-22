class PasswordsController < ApplicationController
  before_filter :authenticate_user!
  def edit
    @user = current_user
  end
  def update
    @user = current_user
    # raise params.inspect
    if @user.update_attribute(:password,params[:user][:password])
      sign_in(@user, :bypass => true)
      redirect_to root_path, :notice => "Your Password has been updated!"
    else
      render :edit
    end

  end
end
