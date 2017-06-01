class WelcomeController < ApplicationController


  def index
    @upcoming_games = Game.order(:start).limit(12)
    @popular_games = Game.popular_games.limit(12)
    @popular_sports = Sport.popular_sports.limit(12)
  end

end
