class Sport < ApplicationRecord
  has_many :games
  validates :name, presence: true, uniqueness: true
  validates :image, presence: true

  def self.popular_sports
    Sport.
    select("sports.*, count(games.id) AS games_count").
    joins(:games).
    group("sports.id").
    order("games_count DESC")
  end

end
