class AddPosterColumnToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :poster_id, :integer
  end
end
