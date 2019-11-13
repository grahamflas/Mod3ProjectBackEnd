class SessionsController < ApplicationController

  def process_login
    user = User.find_or_create_by(username: params[:username])
    session[:user_id] = user.id

    render json: user, include: [:games]
  end

end
