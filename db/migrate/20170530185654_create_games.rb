class CreateGames < ActiveRecord::Migration[5.1]
  def change
    create_table :games do |t|
      t.string :title
      t.string :description
      t.datetime :start
      t.datetime :end
      t.references :sport, foreign_key: true

      t.timestamps
    end
  end
end
