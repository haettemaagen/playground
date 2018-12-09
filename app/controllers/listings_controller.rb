class ListingsController < ApplicationController
  def new
    @listing = Listing.new
  end

  def create
    raise
  end
end
