class SportsController < ApplicationController
  def index
    if params[:sports]
      @sports = Sport.where("LOWER(name) LIKE ?", "%#{params[:sports].downcase}%")
    else
      @sports = Sport.all
    end
  end

  def new
  end

  def show
    @sport = Sport.find(params[:id])
  end

  def edit
  end
end
