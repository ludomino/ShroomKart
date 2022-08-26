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

  def edit
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    set_booking
    if @booking.update(booking_params)
      redirect_to booking_path(@booking), notice: 'Booking was successfully updated.'
    else
      render :edit
    end
    authorize @booking
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to dashboard_path, notice: 'Booking was successfully deleted.'
    authorize @booking
  end

  private

  def booking_params
    params.require(:booking).permit(:start_dates, :end_dates)
  end
end
