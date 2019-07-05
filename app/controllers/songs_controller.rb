class SongsController < ApplicationController
  def new
    @song = Song.new 
  end

  def create
    @song = Song.create(strong_params(:name))
    redirect_to genre_path(@song)
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @genre = Song.update(strong_params(:name))
    redirect_to genre_path(@genre)
  end

  def index
    @genres = Song.all 
  end

  def show
    @genre = Song.find(params[:id])
  end
  
  private

  def strong_params(*args)
      params.require(:genre).permit(*args)
  end   
end
