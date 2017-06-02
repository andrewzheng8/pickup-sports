class AddImageToSports < ActiveRecord::Migration[5.1]
  def change
    add_column :sports, :image, :string
  end
end
