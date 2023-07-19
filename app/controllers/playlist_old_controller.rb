
class PlaylistOldController < ApplicationController
  def index
    @playlists = PlaylistOld.all
  end

  def show
    @playlist = PlaylistOld.find(params[:id])
  end

  def new
    @playlist = PlaylistOld.new
  end

  def create
    @playlist = PlaylistOld.new(playlist_params)
    if @playlist.save
      redirect_to @playlist, notice: 'Playlist was successfully created.'
    else
      render :new
    end
  end

  private

  def playlist_params
    params.require(:playlist_old).permit(:user_id, :song_id, :title)
  end
end
