class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update, :destroy]

  def index
    @artists = Artist.all.order(rank: :asc)
  end

  def show
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)
    @artist.save ? (redirect_to artist_path(@artist)) : (render :new)
  end

  def edit
  end

  def update
    @artist.update(artist_params) ? (redirect_to artist_path) : (render :edit)
  end

  def destroy
    @artist.destroy
    redirect_to artist_path
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :rank)
  end

  def set_artist
    @artist = Artist.find(params[:id])
  end

end
