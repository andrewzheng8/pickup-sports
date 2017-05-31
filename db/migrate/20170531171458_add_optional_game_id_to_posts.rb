class AddOptionalGameIdToPosts < ActiveRecord::Migration[5.1]
  def change
    add_reference :posts, :game, index: true
  end
end
