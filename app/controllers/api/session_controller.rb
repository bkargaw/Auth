class Api::SessionController < ApplicationController
  
  def create
    @user = User.find_by_cridential(user_params[:user], user_params[:password])

    if @user
      log_in(@user)
      render 'api/users/show'
    else
      render(
        json: ["Invalid credential/password combination"],
        status: 401
      )
    end

  end

  def destroy
    if current_user
      @user = current_user
      render 'api/users/show'
      log_out
    else
      render(
        json: ["No one logged out"],
        status: 404
      )
    end
  end

  def user_params
    params.require(:user).perimt(:username, :password)
  end
end
