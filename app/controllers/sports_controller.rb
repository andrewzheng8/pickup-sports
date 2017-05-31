class SportsController < ApplicationController
  def index
    @sports = Sport.all
  end

  def new
    @sport = Sport.new
  end

  def create
    @sport = Sport.new(sports_params)
    if @sport.save
      redirect_to sport_path(@sport)
    else
      render :new
    end
  end

  def show
    @sport = Sport.find(params[:id])
  end

  def edit
  end

  private

  def sports_params
    params.require(:sport).permit(:name)
  end
end
