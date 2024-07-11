class CriticsController < ApplicationController
    before_action :set_critic, only: %i[ show update destroy ]
    def index
        @critics = Critic.all
        render json: @critics
    end

    def show
        render json: @critic
    end

    def create
        @critic = Critic.new(critic_params)

        if @critic.save
            render json: @critic, status: :created, location: @critic
        else
            render json: @critic.errors, status: :unprocessable_entity
        end
    end

    def update
        if @critic.update(critic_params)
            render json: @critic, status: :ok, location: @critic
        else
            render json: @critic.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @critic.destroy

        render json: {
            message: [ "Critic was successfully desstroy." ]
        }, status: :ok
    end


    private

        def set_critic
            @critic = Critic.find(params[:id])
        end

        def critic_params
            params.require(:critic).permit(:preferred_name, :surname, :organization_name)
        end
end
