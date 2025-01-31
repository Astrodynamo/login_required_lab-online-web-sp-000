class SessionsController < ApplicationController

    def new
    end

    def create
        if !params[:name] || params[:name].empty?
            redirect_to "/login"
        else
            session[:name] = params[:name]
            redirect_to "/secret"
        end
    end

    def destroy
        session.clear
        redirect_to root_path
    end
end
