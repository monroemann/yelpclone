class PlacesController < ApplicationController
  
  def index
    @places = Place.released.paginate(page: params[:page], per_page: 3)

    #ALTERNATE METHOD.  DOES SAME THING:
    # @places = Place.paginate(:page => params[:page], :per_page => 3)
  end

  def new
    @place=Place.new
  end

end
