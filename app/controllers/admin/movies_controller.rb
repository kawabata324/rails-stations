class Admin::MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      flash[:success] = "映画を追加しました"
      redirect_to action: "index"
    else
      flash.now[:danger] = "映画の登録に失敗しました"
      render :new
    end
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    pp '!!!!!!!!!!!!!!!'
    @movie = Movie.find(params[:id])

    if @movie.update(movie_params)
      flash.now[:success] = "映画の更新をしました"
      redirect_to action: "index"
    else
      flash.now[:danger] = "映画の登録に失敗しました"
      render :edit
    end
  end
  private

    def movie_params
      params.require(:movie).permit(:name, :year, :is_showing, :description, :image_url)
    end
end
