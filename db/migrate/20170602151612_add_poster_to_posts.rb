class AddPosterToPosts < ActiveRecord::Migration[5.1]
  def change
    add_reference :posts, :poster, foreign_key: {to_table: :players}
  end
end
