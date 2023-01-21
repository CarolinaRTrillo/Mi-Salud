class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings

    # Scope your query to the dates being shown:
    start_date = params.fetch(:start_time, Date.today).to_date

    # For a monthly view:
    @bookings = Booking.where(start_time: start_date.beginning_of_month.beginning_of_week..start_date.end_of_month.end_of_week)

  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path
    else
      render :new
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:name, :start_time, :details, :address)
  end
end
