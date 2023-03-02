class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])

  end

  def create

  end

  # def edit
  #   @users = User.find(params[:id])
  # end

  def destroy
    #button on view
  end

  def update

  end

end
