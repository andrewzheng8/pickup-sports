class AddAttributesToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :players, :name, :string
    add_column :players, :location, :string
    add_column :players, :birthday, :date
    add_column :players, :phone_number, :integer
    add_reference :players, :posts, index: true
  end
end
