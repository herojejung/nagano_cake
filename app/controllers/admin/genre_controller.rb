class Admin::GenreController < ApplicationController
def create
  @genre = Genre.new(genre_params)
  if @genre.save
  redirect_to admin_item_path(@genre.id)
  end
end

  def index
    @genres = Genre.all
  end

  def edit
    @genre = Genre.find(params[:id])
  end
  
private
  # ストロングパラメータ
def genre_params
    params.require(:genre).permit(:name)
end
end

  
