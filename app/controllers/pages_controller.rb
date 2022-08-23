class PagesController < ApplicationController
  def home
    @karts = Kart.all
  end
end
