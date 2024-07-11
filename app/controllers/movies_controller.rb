class MoviesController < ApplicationController
    before_action :set_movie, only: %i[ show update destroy ]
    def index
        @movies = Movie.all
        render json: @movies
    end

    def show
        render json: @movie, include: { theaters: {}, reviews: { include: :critic } }
    end

    def create
        @movie = Movie.new(movie_params)
            if @movie.save
                render json: @movie, status: :created, location: @movie
            else
                render json: @movie.errors, status: :unprocessable_entity
            end
    end
    
    def update
        if @movie.update(movie_params)
            render json: @movie, status: :ok, location: @movie
        else
            render json: @movie.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @movie.destroy!

        render json: { 
            message: [ "Movie destroyed successfully" ] 
         }, status: :ok
    end






    private


    def set_movie
        @movie = Movie.find(params[:id])
    end

    def movie_params
        params.require(:movie).permit(:title, :rating, :description, :runtime_in_minutes, :image_url)
    end
end
