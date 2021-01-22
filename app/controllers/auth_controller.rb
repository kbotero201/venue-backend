class AuthController < ApplicationController

    def autologin
      render json: @current_user
    end
  
  end

  