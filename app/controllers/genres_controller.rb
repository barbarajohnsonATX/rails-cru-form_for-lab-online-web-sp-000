class GenresController < ApplicationController
   def new
    @genre = Genre.new 
  end

  def create
    @genre = Genre.create(strong_params(:name))
    redirect_to genre_path(@genre)
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.update(strong_params(:name))
    redirect_to genre_path(@artist)
  end

  def index
    @genres = Genre.all 
  end

  def show
    @genres = Genre.find(params[:id])
  end
  
  private

  def strong_params(*args)
      params.require(:genre).permit(*args)
  end
end
