class Game < ApplicationRecord
  belongs_to :sport
  has_many :player_games
  has_many :players, through: :player_games
  has_many :posts
  belongs_to :location, optional: true

  validates :title, presence: true


  def pretty_start
    self.start.strftime("%b %-d, %l:%M %p")
  end

  def pretty_end
    self.end.strftime("%b %-d, %l:%M %p")
  end

  def self.popular_games
    Game.
    select("games.*, count(players.id) AS players_count").
    joins(:players).
    group("games.id").
    order("players_count DESC")
  end

end
