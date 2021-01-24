class Api::V1::EventsController < ApplicationController
    
    def show
        event = Event.find(params[:id])
        render json: event
    end

    def index
        event = Event.all
        render json: event
    end 

end