class SessionsController < ApplicationController
    def new
        
    end

    def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
          session[:user_id] = user.id
          flash[:notice] = "Logged in successfully"
          if session[:back]
            redirect_to session[:back]
          else
            redirect_to user
          end
        else
          flash.now[:alert] = "There was something wrong with your login details"
          render :new,  status: 422
        end
    end
    
    def destroy
        session[:user_id] = nil
        session[:back]=nil
        flash[:notice] = "Logged out"
        redirect_to root_path
    end
end
