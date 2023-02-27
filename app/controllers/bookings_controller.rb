class BookingsController < ApplicationController

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
    @booking.save
  end

  def edit
    @task = Task.find(params[:id])
    # May not be suitable due to update on card plans
  end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(booking_params)
    redirect_to # booking card if needed
  end

  def destroy
    @booking = Booking.find(params[:id])
    @Booking.destroy
    # redirect_to status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:user, :car)
  end
end
