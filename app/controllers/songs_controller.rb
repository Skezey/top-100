class SongsController < ApplicationController
  def index
    @songs = Songs.all
  end

  def new
    @song = @song.new
  end

  def show
    @song = Song.find(params[:id])
  end

  def create 
    @song = Song.new(song_params)
    
    if @song.save
      redirect_to new_artist_song_path
    else
      render :new
    end
  end

  def update
    @song = Song.find(params[:id])

    if @song.update(song_params)
      redirect_to artist_song_path
    else
      render :edit
    end
  end

  def edit
    @song = @Song.find(params[:id])
  end

  def destroy
    song.find(params[:id].destroy)
  end

  private

  def song_params
    params.require(songs).permit(:title, :artist_id, :year)
  end
end
