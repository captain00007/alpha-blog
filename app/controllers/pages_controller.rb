class PagesController < ApplicationController
    def home
        
    end

    def about
    end

    def identification
        @users = User.all
    end
end
