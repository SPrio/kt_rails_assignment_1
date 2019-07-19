class PhotosController < ApplicationController

  def new
    @photo=Photo.new
  end
  def index
    @photos = Photo.all
  end
  def show
    @photo = Photo.all
  end
  
  def create
    @photo = Photo.create(photo_params)
    if @photo.save
      render 'new'
    else
      render 'new'
      
    end 
  end
  
  private
  
  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.
  
  def photo_params
    params.require(:photo).permit(:avatar)
  end
end
