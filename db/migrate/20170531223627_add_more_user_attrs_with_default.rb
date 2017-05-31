class AddMoreUserAttrsWithDefault < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :up_points, :integer, default: 0
    add_column :players, :down_points, :integer, default: 0
    add_column :players, :skill_level, :string
  end
end
