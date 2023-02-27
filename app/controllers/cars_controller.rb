class CarsController < ApplicationController

  def index
    @cars = Car.all
  end

  def show
    @cars = Car.find(params[:id])
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.save
    redirect_to car_path(@car)
  end

  def edit
  end


   def update
    @car = Car.find(params[:id])
    @car.update(car_params)
    redirect_to car_path(@car)
   end

   private

   def car_params
    params.require(:car).permit(:model, :number_of_seats, :fuel_type, :colour, :photo)
   end
end
