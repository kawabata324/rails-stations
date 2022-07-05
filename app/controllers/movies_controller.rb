class MoviesController < ApplicationController
  def index
    @movies = if movie_params[:keyword].present?
      Movie.where("name LIKE ?", "%#{movie_params[:keyword]}%") | Movie.where("description LIKE ?", "%#{movie_params[:keyword]}%")
    else
      Movie.all
    end

    case movie_params[:is_show_type]
    in "ALL"
      @movies
    in "1"
      @movies.where!(is_showing: 1)
    in "0"
      @movies.where!(is_showing: 0)
    else
      @movies
    end
  end

  private

    def movie_params
      params.permit(:keyword, :is_show_type, :commit)
    end
end
