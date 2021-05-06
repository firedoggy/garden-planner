class PlantsController < ApplicationController

    def index
        @plants = Plant.all
    end

    def show
        @plant = Plant.find_by(id: params(:id))
    end

    def new
    end

    def create
        user = current_user
        plant = Plant.find_or_create_by(params[:plant_id])
    end
    
    def search

    end
end
