class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:session][:username].downcase)
    if user && user.authenticate(params[:session][:password])
      sign_in user
      # remember user
      redirect_to root_path

    else
      flash.now[:alert] = "Invalid email/password combination"
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end


end
