class SongsController < ApplicationController
  def new
    @song = Song.new
  end
  
  def create
    song = Song.create(params.require(:song).permit(:name, :genre_id, :artist_id))
    redirect_to song
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    song = Song.find(params[:id])
    song.update(params.require(:song).permit(:name, :genre_id, :artist_id))
    redirect_to song
  end

  def show
    @song = Song.find(params[:id])
  end
end
