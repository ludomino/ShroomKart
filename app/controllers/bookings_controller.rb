class BookingsController < ApplicationController
  before_action :set_booking, only: :destroy

  def show
    @kart = Kart.find(params[:id])
    @booking = Booking.new
  end

  def create
    @kart = Kart.find(params[:kart_id])
    @booking = Booking.new(booking_params)
    @booking.kart = @kart
    @booking.user = current_user
    if @booking.save
      redirect_to profile_path
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_dates, :end_dates)
  end
end
