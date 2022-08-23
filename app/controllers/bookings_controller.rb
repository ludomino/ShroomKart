class BookingsController < ApplicationController
  before_action :set_booking, only: :destroy
  before_action :set_list, only: [:new, :create]

  def show
    @kart = Kart.find(params[:id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.kart = @karts
    if @booking.save
      redirect_to kart_path(@kart)
    else
      render :new
    end
  end
end
