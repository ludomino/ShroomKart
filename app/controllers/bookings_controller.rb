class BookingsController < ApplicationController
  before_action :set_booking, only: [:confirm, :refuse ]

  def show
    @kart = Kart.find(params[:id])
    @booking = Booking.new
  end

  def create
    @kart = Kart.find(params[:kart_id])
    @booking = Booking.new(booking_params)
    @booking.kart = @kart
    @booking.user = current_user

    @booking.save!
    if @booking.save
      redirect_to profile_path
    end
  end

  # def confirm
  #   @booking.update(satus: "accepted")
  #   redirect_to profile_path
  # end

  # def refuse
  #   @booking.update(satus: "canceled")
  #   redirect_to profile_path
  # end

  # private

  # def set_booking
  #   @set_booking = Booking.find(params[:id])
  # end

  def booking_params
    params.require(:booking).permit(:start_dates, :end_dates)
  end
end
