class User < ApplicationRecord
  has_one :user_info
  has_many :user_playlists
  has_many :playlists, through: :user_playlists, source: :playlist

  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, length: { minimum: 6 }
end
