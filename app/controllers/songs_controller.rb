class SongsController < ApplicationController
  def new
    @song = Song.new 
  end

  def create
    @song = Genre.create(strong_params(:name))
    redirect_to genre_path(@song)
  end

  def edit
    @song = Genre.find(params[:id])
  end

  def update
    @genre = Genre.update(strong_params(:name))
    redirect_to genre_path(@genre)
  end

  def index
    @genres = Genre.all 
  end

  def show
    @genre = Genre.find(params[:id])
  end
  
  private

  def strong_params(*args)
      params.require(:genre).permit(*args)
  end   
end
