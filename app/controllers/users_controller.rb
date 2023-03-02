class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @users = User.new
  end

  def show
    @users = User.find(params[:id])
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
