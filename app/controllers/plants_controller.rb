class PlantsController < ApplicationController

    def index
    end

    def show
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
