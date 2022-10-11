class PagesController < ApplicationController
    include UserLogged
    def home
        redirect_to articles_path if logged_in?
    end

    def about
    end
end
