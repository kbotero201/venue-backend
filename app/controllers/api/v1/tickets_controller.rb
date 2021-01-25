class Api::V1::TicketsController < ApplicationController
    
    def show
        ticket = Ticket.find(params[:id])
        render json: ticket
    end

    def index
        ticket = Ticket.all
        render json: ticket
    end 

    def create 
        ticket = Ticket.create(ticket_params)
        render json: ticket
    end 

    def destroy
        ticket = Ticket.find_by(id: params[:id])
        ticket.destroy
        render json: ticket
    end 

    private 

    def ticket_params
        params.permit(:user_id, :event_id)
    end 

    


end
