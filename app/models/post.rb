class Post < ApplicationRecord
  belongs_to :player, optional: true
  belongs_to :game, optional: true
  belongs_to :poster, :class_name => "Player", :foreign_key => 'poster_id'

end
