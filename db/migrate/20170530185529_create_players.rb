class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :password_digest
      t.string :email

      t.timestamps
    end
  end
end
