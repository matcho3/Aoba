class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(reservation_id: params[:session][:reservation_id])
    if user
      sign_in user
      redirect_to confirm_path
    else
      flash.now[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end



  def destroy
  end
end