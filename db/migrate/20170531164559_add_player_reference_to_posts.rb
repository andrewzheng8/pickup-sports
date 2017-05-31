class AddPlayerReferenceToPosts < ActiveRecord::Migration[5.1]
  def change
    add_reference :posts, :player, index: true
  end
end
