
class UserPlaylistController < ApplicationController
  def index
    @user_playlists = UserPlaylist.all
  end

  def show
    @user_playlist = UserPlaylist.find(params[:id])
  end

  def new
    @user_playlist = UserPlaylist.new
  end

  def create
    @user_playlist = UserPlaylist.new(user_playlist_params)
    if @user_playlist.save
      redirect_to @user_playlist, notice: 'User playlist was successfully created.'
    else
      render :new
    end
  end

  private

  def user_playlist_params
    params.require(:user_playlist).permit(:user_id, :playlist_id)
    class PlaylistsController < ApplicationController
      def index
        # Логіка для сторінки "Плейлисти"
      end
  end

end
