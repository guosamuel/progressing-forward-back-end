class Api::V1::UsersController < ApplicationController

  def index
    @users = User.all
    render json: @users
  end

  def create
    new_user = User.new(username: params[:username], password: params[:password], first_name: params[:firstName], last_name: params[:lastName])
    if new_user.save
      render json: new_user
    else
      render json: {error: "You goofed"}
    end
  end
end
