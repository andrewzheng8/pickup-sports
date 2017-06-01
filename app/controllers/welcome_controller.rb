class WelcomeController < ApplicationController


  def index
    @upcoming_games = Game.order(:start)
    @popular_games = Game.popular_games
    @popular_sports = Sport.popular_sports
  end

end
