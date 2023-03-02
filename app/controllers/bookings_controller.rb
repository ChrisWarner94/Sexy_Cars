class BookingsController < ApplicationController
  before_action :set_car, only: [:create, :new]

  def index
    @booking = Booking.all
  end
  def show
    @booking = @booking.find(params[:id])
  end
  def new
    @booking = Booking.new
  end
  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.car = @car
    if @booking.save
      redirect_to user_path(current_user)
    else
      redirect_to car_path(@car)
    end
  end
  def edit
    @booking = Booking.find(params[:id])
    # May not be suitable due to update on card plans
  end
  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    #
  end
  def destroy
    @booking = Booking.find(params[:id])
    @Booking.destroy
    # redirect_to status: :see_other
  end
  private
  def booking_params
    params.require(:booking).permit(:user_id, :car_id, :pickup_date, :return_date)
  end
  def set_user
    @user = current_user
  end
  def set_car
    @car = Car.find(params[:car_id])
  end
end
