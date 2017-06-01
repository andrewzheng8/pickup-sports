class Player < ApplicationRecord
  has_secure_password
  attr_accessor :avatar
  has_many :player_games
  has_many :games, through: :player_games
  has_many :posts
  has_many :user_friends
  mount_uploader :avatar, AvatarUploader
end
