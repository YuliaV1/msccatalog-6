class PlaylistOld < ApplicationRecord
  belongs_to :user
  belongs_to :song

  validates :title, presence: true
end
