class UsersController < ApplicationController

  def index
    users = User.all
    render json: users, include: [:games]
  end

  def show
    user = User.find(params[:id])
    render json: user, include: [:games]
  end

  def create
    newUser = User.create(username: params[:username])
    render json: newUser
  end

end
