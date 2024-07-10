class CinemasController < ApplicationController

    def index
        if params[:is_showing].present?
            cinemas = Cinema.where(is_showing: params[:is_showing])
        else
            cinemas = Cinema.all
        end
        render json: cinemas, include: [:theater, :movie], status: :ok
    end
end
