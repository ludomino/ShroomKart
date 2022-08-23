class PagesController < ApplicationController
  def home
    @karts = Kart.all
  end

  def profile
    @user = User.find(params[:id])
  end
end
