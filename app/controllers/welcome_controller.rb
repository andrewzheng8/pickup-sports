class WelcomeController < ApplicationController


  def index
    @games = Game.all
    @sports = Sport.all
  end

end
