class Api::V1::VenuesController < ApplicationController

    def show
        venues = Venue.find(params[:id])
        render json: venues
    end 

    def index
      venues = Venue.all
      render json: venues
    end 

end

