class CarsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:query].present?
      @cars = Car.search_by_model(params[:query])
    else
      @cars = Car.all
    end

  end

  def show

    @user = current_user

    @car = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    if @car.save
    redirect_to car_path(@car)
    else
      render :new , status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @user = User.find(params[:user_id])
    @car = Car.find(params[:id])
    @car.update(car_params)
    redirect_to car_path(@car)
  end

  private

  def car_params
    params.require(:car).permit(:model, :number_of_seats, :fuel_type, :colour, :photo, :user_id)
  end

  def set_car
    @car = Car.find(params[:car_id])
  end
end
