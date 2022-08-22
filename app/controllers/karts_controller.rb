class KartsController < ApplicationController
  before_action :set_kart, only: [:show, :destroy]
  def index
    @karts = Kart.all
  end

  def show
    @bookings = Booking.new
    @kart = Kart.find(params[:id])
  end

  def new
    @kart = Kart.new
  end

  def create
    @kart = Kart.new(kart_params)
    if @kart.save
      redirect_to kart_path(@kart)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @kart.destroy
    redirect_to karts_path, status: :see_other
  end

  private

  def set_karts
    @kart = Kart.find(params[:id])
  end

  def kart_params
    params.require(:kart).permit(:name, :photo)
  end
end
