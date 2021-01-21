class Api::V1::TicketsController < ApplicationController
    
    def show
        ticket = Ticket.find(params[:id])
        render json: ticket
    end

    def index
        ticket = Ticket.all
        render json: ticket
    end 

end
