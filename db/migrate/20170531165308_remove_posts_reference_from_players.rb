class RemovePostsReferenceFromPlayers < ActiveRecord::Migration[5.1]
  def change
    remove_reference :players, :posts, index: true
  end
end
