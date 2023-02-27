class BookingsController < ApplicationController

  def index
    @booking = Booking.all
  end

  def show
    @booking = @booking.find(params[:id])
  end

  def new
    @user = set_user
    @car = set_car
    @booking = Booking.new(booking_params)
  end

  def create
    @user = set_user
    @car = set_car
    @booking = Booking.new(booking_params)
    @booking.save
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
    params.require(:booking).permit(:user_id, :car_id)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def set_car
    @car = Car.find(params[:car_id])
  end
end
