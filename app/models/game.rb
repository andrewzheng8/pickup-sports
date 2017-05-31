class Game < ApplicationRecord
  belongs_to :sport
  has_many :player_games
  has_many :players, through: :player_games
  has_many :posts

  def pretty_start
    self.start.strftime("%b %-d, %l:%M %p")
  end

  def pretty_end
    self.end.strftime("%b %-d, %l:%M %p")
  end

  def self.popular_games
    Game.
    select("games.*, count(players.id)").
    joins(:players).
    group("games.id").
    order("count(players.id) DESC").
    limit(10)
  end

end
