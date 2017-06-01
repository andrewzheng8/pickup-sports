class AddLocationToGames < ActiveRecord::Migration[5.1]
  def change
    add_reference :games, :location, index: true
  end
end
