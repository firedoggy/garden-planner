class SessionsController < ApplicationController

    def home
    end

    def create
        user = User.find_by(username: params[:user][:username])
        if user && user.authenticate(params[:user][:password])
          log_in(user)
          redirect_to user_path(user)
        else
          flash[:message] = "Incorrect login info, please try again"
          redirect_to '/login'
        end
    end

    def destroy
        session.clear
        redirect_to root_path
    end

    private

    
end