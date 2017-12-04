class UsersController < ApplicationController
  def index
    users = User.all
    render json:users
  end

  def create
    user = User.new(name: params[:name])
    if user.save
      render json:user
    else
      render json:user.errors
    end
  end

  def show
    user = User.find(params[:id])
    render json:user
  end



end
