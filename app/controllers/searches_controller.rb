class SearchesController < ApplicationController
    before_action :require_user
    def search_articles
        #binding.break
        if params[:query].present?
            @articles = Article.where("title LIKE ?", "%#{params[:query].downcase}%")
            @articles=@articles.paginate(page: params[:page], per_page: 2)
            @query=params[:query]
        end    
    end
end