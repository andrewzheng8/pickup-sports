class LocationsController < ApplicationController
  before_action :verify, except: [:index, :show]
  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to location_path(@location)
    else
      render :new
    end
  end

  def show
    @location = Location.find(params[:id])
    @locations_arr = [@location]
    @hash = Gmaps4rails.build_markers(@locations_arr) do |location, marker|
      marker.lat location.latitude
      marker.lng location.longitude
    end
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])
    @location.update(location_params)
    if location.save
      redirect_to location_path(@location)
    else
      render :edit
    end
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to locations_path
  end

  private

  def location_params
    params.require(:location).permit(:title, :description, :address)
  end
end
