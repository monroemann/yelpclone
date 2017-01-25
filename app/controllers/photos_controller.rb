class PhotosController < ApplicationController

  def create

   @photo = current_user.photos.create(photo_params)
        if@photo.valid?
          redirect_to root_path
        else
          render :new, status: :unprocessable_entity
        end

  end


  private

  def photo_params
    params.require(:photo).permit(:caption)
  end

end
