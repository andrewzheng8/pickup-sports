class Post < ApplicationRecord
  belongs_to :player
  belongs_to :game, optional: true

  validates :title, presence: true
  validates :content, presence: true
end
