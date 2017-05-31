class Sport < ApplicationRecord
  has_many :games

  def self.popular_sports
    Sport.
    select("sports.*, count(games.id)").
    joins(:games).
    group("sports.id").
    order("count(games.id) DESC").
    limit(10)
  end

end
