class KartsController < ApplicationController
  before_action :set_kart, only: [:show, :create, :destroy]
  def index
    if params[:query].present?
      @karts = Kart.global_search(params[:query])
    else
      @karts = Kart.all.reverse
    end
    @user = current_user
  end

  def show
    @booking = Booking.new
  end

  def new
    @kart = Kart.new
  end

  def create
    @kart = Kart.new(kart_params)
    @kart.user = current_user
    if @kart.save
      redirect_to karts_path(@kart)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @kart.destroy
    redirect_to karts_path, status: :see_other
  end

  private

  def set_kart
    @kart = Kart.find(params[:id])
  end

  def kart_params
    params.require(:kart).permit(:image, :name, :special_skills, :price)
  end
end
