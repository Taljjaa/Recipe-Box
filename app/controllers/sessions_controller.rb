class SessionsController < ApplicationController
    def new 
    end

    def create 
        user = User.find_by(username: params[:session][:username])
        if user && user.authenticate(params[:session][:password])
                session[:user_id] = user.id
                redirect_to recipes_path
        else 
            flash[:errors] = "Password or username does not match. Try again"
            redirect_to login_path
        end
    end

    def destroy 
        session.delete(:user_id)
        redirect_to recipes_path
    end
end