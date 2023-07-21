
class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to @song, notice: 'Song was successfully created.'
    else
      render :new
    end
  end
  private

  def song_params

    params.require(:song).permit(:name, :artist, :duration)
    class CatalogController < ApplicationController
      def index
        # Логіка для сторінки "Каталог"
      end
  end
end
