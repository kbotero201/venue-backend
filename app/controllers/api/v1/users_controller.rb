class Api::V1::UsersController < ApplicationController

    def show
        users = User.find(params[:id])
        render json: users#, except:[:updated_at, :created_at] 
    end 

    def index
    users = User.all
      render json: users#, except:[:updated_at, :created_at] 
    end 

    def create 
      user = User.create(user_params)
      render json: user
    end 

    def new 
      user = User.new
    end 

    def update
      user = User.find_by(id: params[:id])
      user.update(user_params)
      render json: user
    end 

    def destroy 
      user = User.find(params[:id])
      user.destroy
      render json: user
    end 

    private 

    def user_params
      params.permit(:name, :favorite, :password, :id)
    end 

end

