class ImagesController < ApplicationController
  def index
    @photo = Photo.create(photo_params)
  end
  def show
    @photos = Photo.all

  end
  
  private
  
  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.
  
  def photo_params
    params.require(:photo).permit(:avatar)
  end
end
