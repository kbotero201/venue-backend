class Api::V1::UsersController < ApplicationController

    def show
        users = User.find(params[:id])
        render json: users#, except:[:updated_at, :created_at] 
    end 

    def index
    users = User.all
      render json: users#, except:[:updated_at, :created_at] 
    end 

end

