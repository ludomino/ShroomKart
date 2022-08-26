class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
    @karts = Kart.all
  end

  def profile
    @user = current_user
    @bookings = current_user.bookings
    @karts = current_user.karts
  end
end
