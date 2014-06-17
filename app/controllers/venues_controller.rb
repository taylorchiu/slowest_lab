class VenuesController < ApplicationController
  def show
    @venue = Venue.find(params[:id])
  end
  def index
    @venues = Venue.all.includes(:shows).page(params[:page]).per(1)
  end
end