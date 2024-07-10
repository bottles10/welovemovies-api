class TheatersController < ApplicationController
    before_action :set_theater, only: %i[ show update destroy]

    def index
        @theaters = Theater.all
        render json: @theaters, include: [:movies]
    end

    def show
        render json: @theater
    end

    def create
        @theater = Theater.new(theater_params)
        if @theater.save
            render json: @theater, status: :created, location: @theater
        else
            render json: @theater.errors, status: :unprocessable_entity
        end
    end

    def update
        if @theater.update(theater_params)
            render json: @theater, status: :ok, location: @theater
        else
            render json: @theater.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @theater.destroy!
        
        render json: {
            message: [ " Theater succesfult destroyed"]
        }, status: :ok
    end


    private

        def set_theater
            @theater = Theater.find(params[:id])
        end

        def theater_params
            params.require(:theater).permit(:name, :address, :city, :state, :zip)
        end
end
