class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?
    def current_user
        if @current_user
            return @current_user
        else
            if session[:user_id] 
               return @current_user = User.find(session[:user_id]) 
            end
            return nil
        end
    end

    def logged_in?
        return false if current_user.nil?
        return true
    end
end
