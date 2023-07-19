class UserPlaylist < ApplicationRecord
  belongs_to :user
  belongs_to :playlist, class_name: "PlaylistOld"
end
