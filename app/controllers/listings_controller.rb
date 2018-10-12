class ListingsController < ApplicationController
  def new
    @listing = Listing.new
  end

  def create
    @listing = Listing.create(user_params)
    @listing.errors.blank? ? redirect_to('/listings/new') : render(:new)
  end

  def index
    @listings = Listing.all
  end

  def filtered
    @sorted = Listing.where(:start_date => params[:chosen_date])
  end

  private

  def user_params
    params.require(:listing).permit(:property_name, :description, :price, :start_date)
  end

end
