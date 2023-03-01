class CarsController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @cars = Car.all
  end

  def show
    # @user = User.find(params[:user_id])
    @cars = Car.find(params[:id])
    @booking = Booking.new
  end

  def new
    @user = current_user
    @car = Car.new
  end

  def create
    @user = User.find(params[:user_id])
    @car = Car.new(car_params)
    @car.save
    redirect_to car_path(@car)
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
