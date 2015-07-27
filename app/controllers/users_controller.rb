class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def dashboard
  end

  def new
    @users = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(params[:id])
    if user.save
    end
  end

  def update
  end

  def destroy
  end
end
