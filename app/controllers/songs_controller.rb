class SongsController < ApplicationController
  before_action :set_artist
  before_action :set_song, only: [:show, :edit, :update, :destroy]

  def index
    @songs = Songs.all
  end

  def new
    @song = @artist.songs.new
  end

  def show

  end

  def create
    if @song.save
      redirect_to new_artist_song_path[@artist, @song]
    else
      render :new
    end
  end

  def update
    if @song.update(song_params)
      redirect_to artist_song_path
    else
      render :edit
    end
  end

  def edit

  end

  def destroy
    @song.destroy
  end

  private

  def song_params
    params.require(songs).permit(:title, :artist_id, :year)
  end

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end

  def set_song
    @song = Song.find(params[:id])
  end
end
