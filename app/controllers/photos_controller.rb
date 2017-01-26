class PhotosController < ApplicationController

  def create

    place = Place.find(params[:id])
    @photo = place.photos.create(photo_params)
    redirect_to place_path(place)
        
  end


  private

  def photo_params
    params.require(:photo).permit(:caption)
  end

end
