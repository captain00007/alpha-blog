class ArticlesController < ApplicationController
    before_action :require_admin, except: [:index, :show]
    before_action :set_article, only: [:show, :edit, :update, :destroy]
    before_action :require_user

    def show
        
    end

    def index
        @articles=Article.paginate(page: params[:page], per_page: 2)
    end

    def new
        @article=Article.new
    end

    def edit
        
    end

    def create
        @article=Article.new(article_params)
        @article.user=current_user
        if @article.save
            flash[:notice]="Article save succesfully"
            redirect_to article_path(@article)
        else
            render 'new' , status: 422
        end
    end

    def update 
        if @article.update(article_params)
            flash[:notice]="Article update succesfully"
            redirect_to article_path(@article)
        else
            render 'edit', status: 422
        end
    end

    def destroy
        @article.destroy
        redirect_to articles_path
    end

    private
    
    def set_article
        @article=Article.find(params[:id])
    end

    def article_params
        params.require(:article).permit(:title, :description, category_ids: [])
    end

    def require_admin
        if !(logged_in? && current_user.admin?)
            flash[:alert] = "Only admins can perform that action"
            redirect_to articles_path
        end
    end
end
