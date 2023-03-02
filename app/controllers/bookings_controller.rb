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
    @booking = Booking.new
  end

  def create
    @user = set_user
    @car = set_car
    @booking = Booking.new(booking_params)
    @booking.user = @user
    @booking.car = @car
    @booking.save
    if @booking.save
     flash[:notice] = "Your Car is Booked"
     redirect_to cars_path
    else
      render :new, status: :unprocessable_entity
    end

    if @booking.save
      flash[:notice] = "Your Car is Booked"
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
    params.require(:booking).permit(:pickup_date, :return_date)
  end

  def set_user
    @user = current_user
  end

  def set_car
    @car = Car.find(params[:car_id])
  end
end
